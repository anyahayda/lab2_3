# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sequential.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sequential.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sequential.dir/flags.make

CMakeFiles/sequential.dir/sequential.cpp.o: CMakeFiles/sequential.dir/flags.make
CMakeFiles/sequential.dir/sequential.cpp.o: ../sequential.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sequential.dir/sequential.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sequential.dir/sequential.cpp.o -c /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/sequential.cpp

CMakeFiles/sequential.dir/sequential.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sequential.dir/sequential.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/sequential.cpp > CMakeFiles/sequential.dir/sequential.cpp.i

CMakeFiles/sequential.dir/sequential.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sequential.dir/sequential.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/sequential.cpp -o CMakeFiles/sequential.dir/sequential.cpp.s

# Object files for target sequential
sequential_OBJECTS = \
"CMakeFiles/sequential.dir/sequential.cpp.o"

# External object files for target sequential
sequential_EXTERNAL_OBJECTS =

sequential: CMakeFiles/sequential.dir/sequential.cpp.o
sequential: CMakeFiles/sequential.dir/build.make
sequential: CMakeFiles/sequential.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sequential"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sequential.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sequential.dir/build: sequential

.PHONY : CMakeFiles/sequential.dir/build

CMakeFiles/sequential.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sequential.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sequential.dir/clean

CMakeFiles/sequential.dir/depend:
	cd /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2 /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2 /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug /Users/vitaliyhayda/Desktop/UCU2/АКС/HW2/cmake-build-debug/CMakeFiles/sequential.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sequential.dir/depend
