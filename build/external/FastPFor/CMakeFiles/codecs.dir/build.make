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
include external/FastPFor/CMakeFiles/codecs.dir/depend.make

# Include the progress variables for this target.
include external/FastPFor/CMakeFiles/codecs.dir/progress.make

# Include the compile flags for this target's objects.
include external/FastPFor/CMakeFiles/codecs.dir/flags.make

external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.o: external/FastPFor/CMakeFiles/codecs.dir/flags.make
external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.o: ../external/FastPFor/src/codecs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.o"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/codecs.dir/src/codecs.cpp.o -c /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/FastPFor/src/codecs.cpp

external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/codecs.dir/src/codecs.cpp.i"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/FastPFor/src/codecs.cpp > CMakeFiles/codecs.dir/src/codecs.cpp.i

external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/codecs.dir/src/codecs.cpp.s"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/FastPFor/src/codecs.cpp -o CMakeFiles/codecs.dir/src/codecs.cpp.s

# Object files for target codecs
codecs_OBJECTS = \
"CMakeFiles/codecs.dir/src/codecs.cpp.o"

# External object files for target codecs
codecs_EXTERNAL_OBJECTS =

bin/codecs: external/FastPFor/CMakeFiles/codecs.dir/src/codecs.cpp.o
bin/codecs: external/FastPFor/CMakeFiles/codecs.dir/build.make
bin/codecs: external/FastPFor/libFastPFor.a
bin/codecs: external/FastPFor/CMakeFiles/codecs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/codecs"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/codecs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/FastPFor/CMakeFiles/codecs.dir/build: bin/codecs

.PHONY : external/FastPFor/CMakeFiles/codecs.dir/build

external/FastPFor/CMakeFiles/codecs.dir/clean:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor && $(CMAKE_COMMAND) -P CMakeFiles/codecs.dir/cmake_clean.cmake
.PHONY : external/FastPFor/CMakeFiles/codecs.dir/clean

external/FastPFor/CMakeFiles/codecs.dir/depend:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/FastPFor /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/FastPFor/CMakeFiles/codecs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/FastPFor/CMakeFiles/codecs.dir/depend
