#!/bin/csh
setenv TBBROOT "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/tbb" #
setenv tbb_bin "/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/tbb_cmake_build/tbb_cmake_build_subdir_release" #
if (! $?CPATH) then #
    setenv CPATH "${TBBROOT}/include" #
else #
    setenv CPATH "${TBBROOT}/include:$CPATH" #
endif #
if (! $?LIBRARY_PATH) then #
    setenv LIBRARY_PATH "${tbb_bin}" #
else #
    setenv LIBRARY_PATH "${tbb_bin}:$LIBRARY_PATH" #
endif #
if (! $?LD_LIBRARY_PATH) then #
    setenv LD_LIBRARY_PATH "${tbb_bin}" #
else #
    setenv LD_LIBRARY_PATH "${tbb_bin}:$LD_LIBRARY_PATH" #
endif #
 #