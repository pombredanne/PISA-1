#pragma once

#include "configuration.hpp"//#include "./configuration_opt_vb.hpp"
#include "./global_parameters_opt_vb.hpp"
#include "./compact_elias_fano_opt_vb.hpp"
#include "../codec/integer_codes.hpp"
#include "./util_opt_vb.hpp"
#include "./typedefs.hpp"

namespace pvb {

    template<typename Encoder>
    struct partitioned_sequence_enumerator_opt_vb {

        typedef typename Encoder::enumerator base_sequence_enumerator;

        partitioned_sequence_enumerator_opt_vb()
        {}

        partitioned_sequence_enumerator_opt_vb(pisa::bit_vector const& bv, uint64_t offset,
                                        uint64_t universe, uint64_t n,
                                        global_parameters_opt_vb const& params)
            : m_params(&params)
            , m_size(n)
            , m_universe(universe)
            , m_position(0)
            , m_cur_partition(0)
            , m_bv(&bv)
        {
            pisa::bit_vector::enumerator it(bv, offset);
            m_partitions = pisa::read_gamma_nonzero(it);
            if (m_partitions == 1) {
                m_cur_begin = 0;
                m_cur_end = n;

                uint64_t universe_bits = ceil_log2(universe);
                m_cur_base = it.take(universe_bits);
                auto ub = 0;
                if (n > 1) {
                    uint64_t universe_delta = pisa::read_delta(it);
                    ub = universe_delta ? universe_delta : (universe - m_cur_base - 1);
                }

                eat_pad(it, alignment);

                m_partition_enum = base_sequence_enumerator(
                    *m_bv, it.position(), ub + 1, n, *m_params
                );
                m_cur_upper_bound = m_cur_base + ub;

            } else {

                m_endpoint_bits = pisa::read_gamma(it);
                uint64_t cur_offset = it.position();
                m_sizes = compact_elias_fano_opt_vb::enumerator(bv, cur_offset,
                                                         n, m_partitions - 1, *m_params);
                cur_offset += compact_elias_fano_opt_vb::bitsize(*m_params, n,
                                                          m_partitions - 1);

                m_upper_bounds = compact_elias_fano_opt_vb::enumerator(bv, cur_offset,
                                                                universe, m_partitions + 1, *m_params);
                cur_offset += compact_elias_fano_opt_vb::bitsize(*m_params, universe,
                                                          m_partitions + 1);

                m_endpoints_offset = cur_offset;
                uint64_t endpoints_size = m_endpoint_bits * (m_partitions - 1);
                cur_offset += endpoints_size;

                m_sequences_offset = cur_offset;

                uint64_t mod = m_sequences_offset % alignment;
                if (mod) {
                    uint64_t pad = alignment - mod;
                    m_sequences_offset += pad;
                }
                assert((m_sequences_offset % alignment) == 0);

                // XXX: uncomment this for query processing!
                slow_move();
            }
        }

        pv_type DS2I_ALWAYSINLINE move(uint64_t position)
        {
            assert(position <= size());
            m_position = position;

            if (m_position >= m_cur_begin && m_position < m_cur_end) {
                uint64_t val = m_cur_base + m_partition_enum.move(m_position - m_cur_begin).second;
                return pv_type(m_position, val);
            }

            return slow_move();
        }

        // pv_type DS2I_ALWAYSINLINE access_delta(uint64_t position)
        // {
        //     assert(position <= size());
        //     m_position = position;

        //     if (m_position >= m_cur_begin && m_position < m_cur_end) {
        //         uint64_t val = m_cur_base + m_partition_enum.access_delta(m_position - m_cur_begin).second;
        //         return pv_type(m_position, val);
        //     }

        //     return slow_access_delta();
        // }

        pv_type DS2I_ALWAYSINLINE next_geq(uint64_t lower_bound)
        {
            if (DS2I_LIKELY(lower_bound >= m_cur_base && lower_bound <= m_cur_upper_bound)) {
                auto val = m_partition_enum.next_geq(lower_bound - m_cur_base);
                m_position = m_cur_begin + val.first;
                return pv_type(m_position, m_cur_base + val.second);
            }
            return slow_next_geq(lower_bound);
        }

        pv_type DS2I_ALWAYSINLINE next() {
            ++m_position;
            if (DS2I_LIKELY(m_position < m_cur_end)) {
                uint64_t val = m_cur_base + m_partition_enum.next().second;
                return pv_type(m_position, val);
            }
            return slow_next();
        }

        uint64_t size() const {
            return m_size;
        }

        pv_type DS2I_NOINLINE slow_next()
        {
            if (DS2I_UNLIKELY(m_position == m_size)) {
                assert(m_cur_partition == m_partitions - 1);
                auto val = m_partition_enum.next();
                assert(val.first == m_partition_enum.size());
                (void) val;
                return pv_type(m_position, m_universe);
            }

            switch_partition(m_cur_partition + 1);
            uint64_t doc = m_partition_enum.move(0).second;
            uint64_t val = m_cur_base + doc;

            return pv_type(m_position, val);
        }

        pv_type DS2I_NOINLINE slow_move()
        {
            if (m_position == size()) {
                if (m_partitions > 1) {
                    switch_partition(m_partitions - 1);
                }
                m_partition_enum.move(m_partition_enum.size());
                return pv_type(m_position, m_universe);
            }
            auto size_it = m_sizes.next_geq(m_position + 1);
            switch_partition(size_it.first);
            uint64_t val = m_cur_base + m_partition_enum.move(m_position - m_cur_begin).second;
            return pv_type(m_position, val);
        }

        // pv_type DS2I_NOINLINE slow_access_delta()
        // {
        //     auto size_it = m_sizes.next_geq(m_position + 1);
        //     switch_partition(size_it.first);
        //     uint64_t val = m_cur_base + m_partition_enum.access_delta(m_position - m_cur_begin).second;
        //     return pv_type(m_position, val);
        // }

        pv_type DS2I_NOINLINE slow_next_geq(uint64_t lower_bound)
        {
            if (m_partitions == 1) {
                if (lower_bound < m_cur_base) {
                    return move(0);
                } else {
                    return move(size());
                }
            }

            auto ub_it = m_upper_bounds.next_geq(lower_bound);
            if (ub_it.first == 0) {
                return move(0);
            }

            if (ub_it.first == m_upper_bounds.size()) {
                return move(size());
            }

            switch_partition(ub_it.first - 1);
            return next_geq(lower_bound);
        }

        void switch_partition(uint64_t partition)
        {
            assert(m_partitions > 1);

            uint64_t endpoint = partition
                ? (m_bv->get_word56(m_endpoints_offset +
                                    (partition - 1) * m_endpoint_bits)
                   & ((uint64_t(1) << m_endpoint_bits) - 1))
                : 0;

            uint64_t partition_begin = m_sequences_offset + endpoint;
            m_bv->data().prefetch(partition_begin / 64);

            m_cur_partition = partition;
            auto size_it = m_sizes.move(partition);
            m_cur_end = size_it.second;
            m_cur_begin = m_sizes.prev_value();

            auto ub_it = m_upper_bounds.move(partition + 1);
            m_cur_upper_bound = ub_it.second;
            m_cur_base = m_upper_bounds.prev_value() + (partition ? 1 : 0);
            m_partition_enum = base_sequence_enumerator
                (*m_bv, partition_begin,
                 m_cur_upper_bound - m_cur_base + 1,
                 m_cur_end - m_cur_begin,
                 *m_params);
        }

        // void next_partition()
        // {
        //     uint64_t endpoint = m_bv->get_word56(m_endpoints_offset + m_cur_partition * m_endpoint_bits)
        //              & ((uint64_t(1) << m_endpoint_bits) - 1);

        //     uint64_t partition_begin = m_sequences_offset + endpoint;

        //     auto size_it = m_sizes.next();
        //     m_cur_end = size_it.second;
        //     m_cur_begin = m_sizes.prev_value();

        //     auto ub_it = m_upper_bounds.next();
        //     m_cur_upper_bound = ub_it.second;
        //     m_cur_base = m_upper_bounds.prev_value() + (m_cur_partition ? 1 : 0);

        //     m_partition_enum = base_sequence_enumerator
        //         (*m_bv, partition_begin,
        //          m_cur_upper_bound - m_cur_base + 1,
        //          m_cur_end - m_cur_begin,
        //          *m_params);

        //     ++m_cur_partition;
        // }

        global_parameters_opt_vb const* m_params;
        uint64_t m_partitions;
        uint64_t m_endpoints_offset;
        uint64_t m_endpoint_bits;
        uint64_t m_sequences_offset;
        uint64_t m_size;
        uint64_t m_universe;

        uint64_t m_position;
        uint64_t m_cur_partition;
        uint64_t m_cur_begin;
        uint64_t m_cur_end;
        uint64_t m_cur_base;
        uint64_t m_cur_upper_bound;

        pisa::bit_vector const* m_bv;
        compact_elias_fano_opt_vb::enumerator m_sizes;
        compact_elias_fano_opt_vb::enumerator m_upper_bounds;
        base_sequence_enumerator m_partition_enum;
    };
}
