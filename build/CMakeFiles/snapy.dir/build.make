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
CMAKE_SOURCE_DIR = /home/thetimbrick/eclipse-workspace/snapy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thetimbrick/eclipse-workspace/snapy/build

# Include any dependencies generated for this target.
include CMakeFiles/snapy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snapy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snapy.dir/flags.make

CMakeFiles/snapy.dir/src/Mount.cpp.o: CMakeFiles/snapy.dir/flags.make
CMakeFiles/snapy.dir/src/Mount.cpp.o: ../src/Mount.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thetimbrick/eclipse-workspace/snapy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/snapy.dir/src/Mount.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snapy.dir/src/Mount.cpp.o -c /home/thetimbrick/eclipse-workspace/snapy/src/Mount.cpp

CMakeFiles/snapy.dir/src/Mount.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snapy.dir/src/Mount.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thetimbrick/eclipse-workspace/snapy/src/Mount.cpp > CMakeFiles/snapy.dir/src/Mount.cpp.i

CMakeFiles/snapy.dir/src/Mount.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snapy.dir/src/Mount.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thetimbrick/eclipse-workspace/snapy/src/Mount.cpp -o CMakeFiles/snapy.dir/src/Mount.cpp.s

CMakeFiles/snapy.dir/src/main.cpp.o: CMakeFiles/snapy.dir/flags.make
CMakeFiles/snapy.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thetimbrick/eclipse-workspace/snapy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/snapy.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snapy.dir/src/main.cpp.o -c /home/thetimbrick/eclipse-workspace/snapy/src/main.cpp

CMakeFiles/snapy.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snapy.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thetimbrick/eclipse-workspace/snapy/src/main.cpp > CMakeFiles/snapy.dir/src/main.cpp.i

CMakeFiles/snapy.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snapy.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thetimbrick/eclipse-workspace/snapy/src/main.cpp -o CMakeFiles/snapy.dir/src/main.cpp.s

# Object files for target snapy
snapy_OBJECTS = \
"CMakeFiles/snapy.dir/src/Mount.cpp.o" \
"CMakeFiles/snapy.dir/src/main.cpp.o"

# External object files for target snapy
snapy_EXTERNAL_OBJECTS =

snapy: CMakeFiles/snapy.dir/src/Mount.cpp.o
snapy: CMakeFiles/snapy.dir/src/main.cpp.o
snapy: CMakeFiles/snapy.dir/build.make
snapy: CMakeFiles/snapy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thetimbrick/eclipse-workspace/snapy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable snapy"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snapy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snapy.dir/build: snapy

.PHONY : CMakeFiles/snapy.dir/build

CMakeFiles/snapy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snapy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snapy.dir/clean

CMakeFiles/snapy.dir/depend:
	cd /home/thetimbrick/eclipse-workspace/snapy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thetimbrick/eclipse-workspace/snapy /home/thetimbrick/eclipse-workspace/snapy /home/thetimbrick/eclipse-workspace/snapy/build /home/thetimbrick/eclipse-workspace/snapy/build /home/thetimbrick/eclipse-workspace/snapy/build/CMakeFiles/snapy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snapy.dir/depend

