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
CMAKE_SOURCE_DIR = /home/monster/Desktop/pcl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/monster/Desktop/pcl/build

# Include any dependencies generated for this target.
include gpu/containers/CMakeFiles/pcl_gpu_containers.dir/depend.make

# Include the progress variables for this target.
include gpu/containers/CMakeFiles/pcl_gpu_containers.dir/progress.make

# Include the compile flags for this target's objects.
include gpu/containers/CMakeFiles/pcl_gpu_containers.dir/flags.make

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/flags.make
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o: ../gpu/containers/src/device_memory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o -c /home/monster/Desktop/pcl/gpu/containers/src/device_memory.cpp

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.i"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/monster/Desktop/pcl/gpu/containers/src/device_memory.cpp > CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.i

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.s"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/monster/Desktop/pcl/gpu/containers/src/device_memory.cpp -o CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.s

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.requires:

.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.requires

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.provides: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.requires
	$(MAKE) -f gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build.make gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.provides.build
.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.provides

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.provides.build: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o


gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/flags.make
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o: ../gpu/containers/src/error.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o -c /home/monster/Desktop/pcl/gpu/containers/src/error.cpp

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.i"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/monster/Desktop/pcl/gpu/containers/src/error.cpp > CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.i

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.s"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/monster/Desktop/pcl/gpu/containers/src/error.cpp -o CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.s

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.requires:

.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.requires

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.provides: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.requires
	$(MAKE) -f gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build.make gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.provides.build
.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.provides

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.provides.build: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o


gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/flags.make
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o: ../gpu/containers/src/initialization.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o -c /home/monster/Desktop/pcl/gpu/containers/src/initialization.cpp

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.i"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/monster/Desktop/pcl/gpu/containers/src/initialization.cpp > CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.i

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.s"
	cd /home/monster/Desktop/pcl/build/gpu/containers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/monster/Desktop/pcl/gpu/containers/src/initialization.cpp -o CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.s

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.requires:

.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.requires

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.provides: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.requires
	$(MAKE) -f gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build.make gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.provides.build
.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.provides

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.provides.build: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o


# Object files for target pcl_gpu_containers
pcl_gpu_containers_OBJECTS = \
"CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o" \
"CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o" \
"CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o"

# External object files for target pcl_gpu_containers
pcl_gpu_containers_EXTERNAL_OBJECTS =

lib/libpcl_gpu_containers.so.1.11.0.99: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o
lib/libpcl_gpu_containers.so.1.11.0.99: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o
lib/libpcl_gpu_containers.so.1.11.0.99: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o
lib/libpcl_gpu_containers.so.1.11.0.99: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build.make
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/local/cuda/lib64/libcudart_static.a
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/librt.so
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libpcl_gpu_containers.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_regex.so
lib/libpcl_gpu_containers.so.1.11.0.99: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../lib/libpcl_gpu_containers.so"
	cd /home/monster/Desktop/pcl/build/gpu/containers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_gpu_containers.dir/link.txt --verbose=$(VERBOSE)
	cd /home/monster/Desktop/pcl/build/gpu/containers && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libpcl_gpu_containers.so.1.11.0.99 ../../lib/libpcl_gpu_containers.so.1 ../../lib/libpcl_gpu_containers.so

lib/libpcl_gpu_containers.so.1: lib/libpcl_gpu_containers.so.1.11.0.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libpcl_gpu_containers.so.1

lib/libpcl_gpu_containers.so: lib/libpcl_gpu_containers.so.1.11.0.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libpcl_gpu_containers.so

# Rule to build all files generated by this target.
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build: lib/libpcl_gpu_containers.so

.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/build

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/requires: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/device_memory.cpp.o.requires
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/requires: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/error.cpp.o.requires
gpu/containers/CMakeFiles/pcl_gpu_containers.dir/requires: gpu/containers/CMakeFiles/pcl_gpu_containers.dir/src/initialization.cpp.o.requires

.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/requires

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/clean:
	cd /home/monster/Desktop/pcl/build/gpu/containers && $(CMAKE_COMMAND) -P CMakeFiles/pcl_gpu_containers.dir/cmake_clean.cmake
.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/clean

gpu/containers/CMakeFiles/pcl_gpu_containers.dir/depend:
	cd /home/monster/Desktop/pcl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monster/Desktop/pcl /home/monster/Desktop/pcl/gpu/containers /home/monster/Desktop/pcl/build /home/monster/Desktop/pcl/build/gpu/containers /home/monster/Desktop/pcl/build/gpu/containers/CMakeFiles/pcl_gpu_containers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gpu/containers/CMakeFiles/pcl_gpu_containers.dir/depend

