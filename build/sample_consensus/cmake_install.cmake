# Install script for directory: /home/monster/Desktop/pcl/sample_consensus

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_sample_consensusx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/monster/Desktop/pcl/build/lib/libpcl_sample_consensus.so.1.11.0.99"
    "/home/monster/Desktop/pcl/build/lib/libpcl_sample_consensus.so.1.11"
    "/home/monster/Desktop/pcl/build/lib/libpcl_sample_consensus.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_sample_consensus.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/monster/Desktop/pcl/build/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8:"
           NEW_RPATH "/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_sample_consensusx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monster/Desktop/pcl/build/sample_consensus/pcl_sample_consensus-1.11.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_sample_consensusx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/sample_consensus" TYPE FILE FILES
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/boost.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/eigen.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/lmeds.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/method_types.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/mlesac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/model_types.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/msac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/ransac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/rmsac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/rransac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/prosac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_circle.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_circle3d.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_cylinder.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_cone.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_line.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_stick.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_parallel_plane.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_plane.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_normal_sphere.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_parallel_line.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_parallel_plane.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_perpendicular_plane.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_plane.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_registration.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_registration_2d.h"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/sac_model_sphere.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_sample_consensusx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/sample_consensus/impl" TYPE FILE FILES
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/lmeds.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/mlesac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/msac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/ransac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/rmsac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/rransac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/prosac.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_circle.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_circle3d.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_cylinder.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_cone.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_line.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_stick.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_parallel_plane.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_plane.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_normal_sphere.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_parallel_line.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_parallel_plane.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_perpendicular_plane.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_plane.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_registration.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_registration_2d.hpp"
    "/home/monster/Desktop/pcl/sample_consensus/include/pcl/sample_consensus/impl/sac_model_sphere.hpp"
    )
endif()

