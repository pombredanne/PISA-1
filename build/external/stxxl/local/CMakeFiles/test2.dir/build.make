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
include external/stxxl/local/CMakeFiles/test2.dir/depend.make

# Include the progress variables for this target.
include external/stxxl/local/CMakeFiles/test2.dir/progress.make

# Include the compile flags for this target's objects.
include external/stxxl/local/CMakeFiles/test2.dir/flags.make

external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.o: external/stxxl/local/CMakeFiles/test2.dir/flags.make
external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.o: ../external/stxxl/local/test2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.o"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test2.dir/test2.cpp.o -c /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/stxxl/local/test2.cpp

external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test2.dir/test2.cpp.i"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/stxxl/local/test2.cpp > CMakeFiles/test2.dir/test2.cpp.i

external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test2.dir/test2.cpp.s"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/stxxl/local/test2.cpp -o CMakeFiles/test2.dir/test2.cpp.s

# Object files for target test2
test2_OBJECTS = \
"CMakeFiles/test2.dir/test2.cpp.o"

# External object files for target test2
test2_EXTERNAL_OBJECTS =

bin/test2: external/stxxl/local/CMakeFiles/test2.dir/test2.cpp.o
bin/test2: external/stxxl/local/CMakeFiles/test2.dir/build.make
bin/test2: external/stxxl/lib/libstxxl_debug.a
bin/test2: external/stxxl/local/CMakeFiles/test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/test2"
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/stxxl/local/CMakeFiles/test2.dir/build: bin/test2

.PHONY : external/stxxl/local/CMakeFiles/test2.dir/build

external/stxxl/local/CMakeFiles/test2.dir/clean:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local && $(CMAKE_COMMAND) -P CMakeFiles/test2.dir/cmake_clean.cmake
.PHONY : external/stxxl/local/CMakeFiles/test2.dir/clean

external/stxxl/local/CMakeFiles/test2.dir/depend:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/stxxl/local /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/stxxl/local/CMakeFiles/test2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/stxxl/local/CMakeFiles/test2.dir/depend
