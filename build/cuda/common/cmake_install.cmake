# Install script for directory: /home/monster/Desktop/pcl/cuda/common

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_cuda_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/cuda" TYPE FILE FILES
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil_math.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/point_cloud.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/point_types.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/thrust.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/time_gpu.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/time_cpu.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil_inline.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil_inline_bankchecker.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil_inline_drvapi.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/cutil_inline_runtime.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/pcl_cuda_base.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_cuda_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/cuda/common" TYPE FILE FILES
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/common/eigen.h"
    "/home/monster/Desktop/pcl/cuda/common/include/pcl/cuda/common/point_type_rgb.h"
    )
endif()

