# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build

# Include any dependencies generated for this target.
include tools/CMakeFiles/reorder-docids.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/reorder-docids.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/reorder-docids.dir/flags.make

tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o: tools/CMakeFiles/reorder-docids.dir/flags.make
tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o: ../tools/reorder_docids.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o -c /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/tools/reorder_docids.cpp

tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reorder-docids.dir/reorder_docids.cpp.i"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/tools/reorder_docids.cpp > CMakeFiles/reorder-docids.dir/reorder_docids.cpp.i

tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reorder-docids.dir/reorder_docids.cpp.s"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/tools/reorder_docids.cpp -o CMakeFiles/reorder-docids.dir/reorder_docids.cpp.s

# Object files for target reorder-docids
reorder__docids_OBJECTS = \
"CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o"

# External object files for target reorder-docids
reorder__docids_EXTERNAL_OBJECTS =

bin/reorder-docids: tools/CMakeFiles/reorder-docids.dir/reorder_docids.cpp.o
bin/reorder-docids: tools/CMakeFiles/reorder-docids.dir/build.make
bin/reorder-docids: libpisa.a
bin/reorder-docids: external/tbb_cmake_build/tbb_cmake_build_subdir_release/libtbb.so.2
bin/reorder-docids: external/FastPFor/libFastPFor.a
bin/reorder-docids: external/libstreamvbyte.a
bin/reorder-docids: external/libMaskedVByte.a
bin/reorder-docids: external/libsimdcomp.a
bin/reorder-docids: gumbo-parser/lib/libgumbo.a
bin/reorder-docids: external/boost-cmake/libboost_filesystem.a
bin/reorder-docids: external/boost-cmake/libboost_system.a
bin/reorder-docids: external/Porter2/libPorter2.a
bin/reorder-docids: external/KrovetzStemmer/libKrovetzStemmer.a
bin/reorder-docids: external/wapopp/libwapopp.a
bin/reorder-docids: external/fmt/libfmtd.a
bin/reorder-docids: external/succinct/libsuccinct.a
bin/reorder-docids: external/stxxl/lib/libstxxl_debug.a
bin/reorder-docids: tools/CMakeFiles/reorder-docids.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/reorder-docids"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reorder-docids.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/reorder-docids.dir/build: bin/reorder-docids

.PHONY : tools/CMakeFiles/reorder-docids.dir/build

tools/CMakeFiles/reorder-docids.dir/clean:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/reorder-docids.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/reorder-docids.dir/clean

tools/CMakeFiles/reorder-docids.dir/depend:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/tools /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/tools/CMakeFiles/reorder-docids.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/reorder-docids.dir/depend
