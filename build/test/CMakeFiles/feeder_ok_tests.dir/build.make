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
CMAKE_SOURCE_DIR = /home/dibydo/Desktop/IndTask

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dibydo/Desktop/IndTask/build

# Include any dependencies generated for this target.
include test/CMakeFiles/feeder_ok_tests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/feeder_ok_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/feeder_ok_tests.dir/flags.make

test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o: test/CMakeFiles/feeder_ok_tests.dir/flags.make
test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o: ../src/greek.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dibydo/Desktop/IndTask/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang-10 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o   -c /home/dibydo/Desktop/IndTask/src/greek.c

test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.i"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang-10 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dibydo/Desktop/IndTask/src/greek.c > CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.i

test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.s"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang-10 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dibydo/Desktop/IndTask/src/greek.c -o CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.s

test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o: test/CMakeFiles/feeder_ok_tests.dir/flags.make
test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o: ../test/feeder_ok.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dibydo/Desktop/IndTask/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o -c /home/dibydo/Desktop/IndTask/test/feeder_ok.cpp

test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.i"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dibydo/Desktop/IndTask/test/feeder_ok.cpp > CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.i

test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.s"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dibydo/Desktop/IndTask/test/feeder_ok.cpp -o CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.s

test/CMakeFiles/feeder_ok_tests.dir/main.cpp.o: test/CMakeFiles/feeder_ok_tests.dir/flags.make
test/CMakeFiles/feeder_ok_tests.dir/main.cpp.o: ../test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dibydo/Desktop/IndTask/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/feeder_ok_tests.dir/main.cpp.o"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/feeder_ok_tests.dir/main.cpp.o -c /home/dibydo/Desktop/IndTask/test/main.cpp

test/CMakeFiles/feeder_ok_tests.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feeder_ok_tests.dir/main.cpp.i"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dibydo/Desktop/IndTask/test/main.cpp > CMakeFiles/feeder_ok_tests.dir/main.cpp.i

test/CMakeFiles/feeder_ok_tests.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feeder_ok_tests.dir/main.cpp.s"
	cd /home/dibydo/Desktop/IndTask/build/test && /bin/clang++-10 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dibydo/Desktop/IndTask/test/main.cpp -o CMakeFiles/feeder_ok_tests.dir/main.cpp.s

# Object files for target feeder_ok_tests
feeder_ok_tests_OBJECTS = \
"CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o" \
"CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o" \
"CMakeFiles/feeder_ok_tests.dir/main.cpp.o"

# External object files for target feeder_ok_tests
feeder_ok_tests_EXTERNAL_OBJECTS =

test/feeder_ok_tests: test/CMakeFiles/feeder_ok_tests.dir/__/src/greek.c.o
test/feeder_ok_tests: test/CMakeFiles/feeder_ok_tests.dir/feeder_ok.cpp.o
test/feeder_ok_tests: test/CMakeFiles/feeder_ok_tests.dir/main.cpp.o
test/feeder_ok_tests: test/CMakeFiles/feeder_ok_tests.dir/build.make
test/feeder_ok_tests: googletest-build/googlemock/gtest/libgtest_maind.a
test/feeder_ok_tests: googletest-build/googlemock/gtest/libgtestd.a
test/feeder_ok_tests: test/CMakeFiles/feeder_ok_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dibydo/Desktop/IndTask/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable feeder_ok_tests"
	cd /home/dibydo/Desktop/IndTask/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/feeder_ok_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/feeder_ok_tests.dir/build: test/feeder_ok_tests

.PHONY : test/CMakeFiles/feeder_ok_tests.dir/build

test/CMakeFiles/feeder_ok_tests.dir/clean:
	cd /home/dibydo/Desktop/IndTask/build/test && $(CMAKE_COMMAND) -P CMakeFiles/feeder_ok_tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/feeder_ok_tests.dir/clean

test/CMakeFiles/feeder_ok_tests.dir/depend:
	cd /home/dibydo/Desktop/IndTask/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dibydo/Desktop/IndTask /home/dibydo/Desktop/IndTask/test /home/dibydo/Desktop/IndTask/build /home/dibydo/Desktop/IndTask/build/test /home/dibydo/Desktop/IndTask/build/test/CMakeFiles/feeder_ok_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/feeder_ok_tests.dir/depend

