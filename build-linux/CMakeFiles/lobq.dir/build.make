# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /mnt/c/Users/kernel/CLionProjects/lobq

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/kernel/CLionProjects/lobq/build-linux

# Include any dependencies generated for this target.
include CMakeFiles/lobq.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lobq.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lobq.dir/flags.make

CMakeFiles/lobq.dir/library.cpp.o: CMakeFiles/lobq.dir/flags.make
CMakeFiles/lobq.dir/library.cpp.o: ../library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/kernel/CLionProjects/lobq/build-linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lobq.dir/library.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lobq.dir/library.cpp.o -c /mnt/c/Users/kernel/CLionProjects/lobq/library.cpp

CMakeFiles/lobq.dir/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lobq.dir/library.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/kernel/CLionProjects/lobq/library.cpp > CMakeFiles/lobq.dir/library.cpp.i

CMakeFiles/lobq.dir/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lobq.dir/library.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/kernel/CLionProjects/lobq/library.cpp -o CMakeFiles/lobq.dir/library.cpp.s

CMakeFiles/lobq.dir/library.cpp.o.requires:

.PHONY : CMakeFiles/lobq.dir/library.cpp.o.requires

CMakeFiles/lobq.dir/library.cpp.o.provides: CMakeFiles/lobq.dir/library.cpp.o.requires
	$(MAKE) -f CMakeFiles/lobq.dir/build.make CMakeFiles/lobq.dir/library.cpp.o.provides.build
.PHONY : CMakeFiles/lobq.dir/library.cpp.o.provides

CMakeFiles/lobq.dir/library.cpp.o.provides.build: CMakeFiles/lobq.dir/library.cpp.o


# Object files for target lobq
lobq_OBJECTS = \
"CMakeFiles/lobq.dir/library.cpp.o"

# External object files for target lobq
lobq_EXTERNAL_OBJECTS =

liblobq.a: CMakeFiles/lobq.dir/library.cpp.o
liblobq.a: CMakeFiles/lobq.dir/build.make
liblobq.a: CMakeFiles/lobq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/kernel/CLionProjects/lobq/build-linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblobq.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lobq.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lobq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lobq.dir/build: liblobq.a

.PHONY : CMakeFiles/lobq.dir/build

CMakeFiles/lobq.dir/requires: CMakeFiles/lobq.dir/library.cpp.o.requires

.PHONY : CMakeFiles/lobq.dir/requires

CMakeFiles/lobq.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lobq.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lobq.dir/clean

CMakeFiles/lobq.dir/depend:
	cd /mnt/c/Users/kernel/CLionProjects/lobq/build-linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/kernel/CLionProjects/lobq /mnt/c/Users/kernel/CLionProjects/lobq /mnt/c/Users/kernel/CLionProjects/lobq/build-linux /mnt/c/Users/kernel/CLionProjects/lobq/build-linux /mnt/c/Users/kernel/CLionProjects/lobq/build-linux/CMakeFiles/lobq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lobq.dir/depend

