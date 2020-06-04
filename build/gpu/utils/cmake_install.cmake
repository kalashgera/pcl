# Install script for directory: /home/monster/Desktop/pcl/gpu/utils

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_gpu_utilsx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/monster/Desktop/pcl/build/lib/libpcl_gpu_utils.so.1.11.0.99"
    "/home/monster/Desktop/pcl/build/lib/libpcl_gpu_utils.so.1"
    "/home/monster/Desktop/pcl/build/lib/libpcl_gpu_utils.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_gpu_utils.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/monster/Desktop/pcl/build/lib:"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_gpu_utilsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monster/Desktop/pcl/build/gpu/utils/pcl_gpu_utils-1.11.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_gpu_utilsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/gpu/utils" TYPE FILE FILES
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/repacks.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/safe_call.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/texture_binder.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/timers_cuda.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_gpu_utilsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/gpu/utils/device" TYPE FILE FILES
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/algorithm.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/asm.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/block.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/cache.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/emulation.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/funcattrib.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/functional.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/reduce.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/static_check.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/vector_math.hpp"
    "/home/monster/Desktop/pcl/gpu/utils/include/pcl/gpu/utils/device/warp.hpp"
    )
endif()

