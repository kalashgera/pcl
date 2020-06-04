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
include cuda/features/CMakeFiles/pcl_cuda_features.dir/depend.make

# Include the progress variables for this target.
include cuda/features/CMakeFiles/pcl_cuda_features.dir/progress.make

# Include the compile flags for this target's objects.
include cuda/features/CMakeFiles/pcl_cuda_features.dir/flags.make

cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o: cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o.depend
cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o: cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o.RelWithDebInfo.cmake
cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o: ../cuda/features/src/normal_3d.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building NVCC (Device) object cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o"
	cd /home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src && /usr/bin/cmake -E make_directory /home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src/.
	cd /home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING=RelWithDebInfo -D generated_file:STRING=/home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src/./pcl_cuda_features_generated_normal_3d.cu.o -D generated_cubin_file:STRING=/home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src/./pcl_cuda_features_generated_normal_3d.cu.o.cubin.txt -P /home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o.RelWithDebInfo.cmake

# Object files for target pcl_cuda_features
pcl_cuda_features_OBJECTS =

# External object files for target pcl_cuda_features
pcl_cuda_features_EXTERNAL_OBJECTS = \
"/home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o"

lib/libpcl_cuda_features.so.1.11.0.99: cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o
lib/libpcl_cuda_features.so.1.11.0.99: cuda/features/CMakeFiles/pcl_cuda_features.dir/build.make
lib/libpcl_cuda_features.so.1.11.0.99: /usr/local/cuda/lib64/libcudart_static.a
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/librt.so
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_system.so
lib/libpcl_cuda_features.so.1.11.0.99: /usr/lib/x86_64-linux-gnu/libboost_regex.so
lib/libpcl_cuda_features.so.1.11.0.99: cuda/features/CMakeFiles/pcl_cuda_features.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/monster/Desktop/pcl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../lib/libpcl_cuda_features.so"
	cd /home/monster/Desktop/pcl/build/cuda/features && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_cuda_features.dir/link.txt --verbose=$(VERBOSE)
	cd /home/monster/Desktop/pcl/build/cuda/features && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libpcl_cuda_features.so.1.11.0.99 ../../lib/libpcl_cuda_features.so.1 ../../lib/libpcl_cuda_features.so

lib/libpcl_cuda_features.so.1: lib/libpcl_cuda_features.so.1.11.0.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libpcl_cuda_features.so.1

lib/libpcl_cuda_features.so: lib/libpcl_cuda_features.so.1.11.0.99
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libpcl_cuda_features.so

# Rule to build all files generated by this target.
cuda/features/CMakeFiles/pcl_cuda_features.dir/build: lib/libpcl_cuda_features.so

.PHONY : cuda/features/CMakeFiles/pcl_cuda_features.dir/build

cuda/features/CMakeFiles/pcl_cuda_features.dir/requires:

.PHONY : cuda/features/CMakeFiles/pcl_cuda_features.dir/requires

cuda/features/CMakeFiles/pcl_cuda_features.dir/clean:
	cd /home/monster/Desktop/pcl/build/cuda/features && $(CMAKE_COMMAND) -P CMakeFiles/pcl_cuda_features.dir/cmake_clean.cmake
.PHONY : cuda/features/CMakeFiles/pcl_cuda_features.dir/clean

cuda/features/CMakeFiles/pcl_cuda_features.dir/depend: cuda/features/CMakeFiles/pcl_cuda_features.dir/src/pcl_cuda_features_generated_normal_3d.cu.o
	cd /home/monster/Desktop/pcl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monster/Desktop/pcl /home/monster/Desktop/pcl/cuda/features /home/monster/Desktop/pcl/build /home/monster/Desktop/pcl/build/cuda/features /home/monster/Desktop/pcl/build/cuda/features/CMakeFiles/pcl_cuda_features.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cuda/features/CMakeFiles/pcl_cuda_features.dir/depend
