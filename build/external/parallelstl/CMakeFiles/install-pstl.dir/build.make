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

# Utility rule file for install-pstl.

# Include the progress variables for this target.
include external/parallelstl/CMakeFiles/install-pstl.dir/progress.make

external/parallelstl/CMakeFiles/install-pstl:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/parallelstl && /usr/bin/cmake -P /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/parallelstl/cmake_install.cmake -DCOMPONENT=ParallelSTL

install-pstl: external/parallelstl/CMakeFiles/install-pstl
install-pstl: external/parallelstl/CMakeFiles/install-pstl.dir/build.make

.PHONY : install-pstl

# Rule to build all files generated by this target.
external/parallelstl/CMakeFiles/install-pstl.dir/build: install-pstl

.PHONY : external/parallelstl/CMakeFiles/install-pstl.dir/build

external/parallelstl/CMakeFiles/install-pstl.dir/clean:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/parallelstl && $(CMAKE_COMMAND) -P CMakeFiles/install-pstl.dir/cmake_clean.cmake
.PHONY : external/parallelstl/CMakeFiles/install-pstl.dir/clean

external/parallelstl/CMakeFiles/install-pstl.dir/depend:
	cd /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/external/parallelstl /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/parallelstl /home/zabala/Documents/Back-up/UNLU/11-Decimo-primer-Cuatrimestre/Recuperacion-de-informacion/Proyecto-final-RI/Repo-pisa-pibiri/PISA/build/external/parallelstl/CMakeFiles/install-pstl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/parallelstl/CMakeFiles/install-pstl.dir/depend
