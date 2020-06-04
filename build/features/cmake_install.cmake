# Install script for directory: /home/monster/Desktop/pcl/features

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/monster/Desktop/pcl/build/lib/libpcl_features.so.1.11.0.99"
    "/home/monster/Desktop/pcl/build/lib/libpcl_features.so.1.11"
    "/home/monster/Desktop/pcl/build/lib/libpcl_features.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so"
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monster/Desktop/pcl/build/features/pcl_features-1.11.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/features" TYPE FILE FILES
    "/home/monster/Desktop/pcl/features/include/pcl/features/boost.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/eigen.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/board.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/flare.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/brisk_2d.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/cppf.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/cvfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/our_cvfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/crh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/don.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/feature.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/fpfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/fpfh_omp.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/from_meshes.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/gasd.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/gfpfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/integral_image2D.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/integral_image_normal.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/intensity_gradient.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/intensity_spin.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/linear_least_squares_normal.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/moment_invariants.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/moment_of_inertia_estimation.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/multiscale_feature_persistence.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/narf.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/narf_descriptor.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/normal_3d.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/normal_3d_omp.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/normal_based_signature.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/organized_edge_detection.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/pfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/pfh_tools.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/pfhrgb.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/ppf.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/ppfrgb.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/shot.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/shot_lrf.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/shot_lrf_omp.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/shot_omp.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/spin_image.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/principal_curvatures.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/rift.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/rops_estimation.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/rsd.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/grsd.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/statistical_multiscale_interest_region_extraction.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/vfh.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/esf.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/3dsc.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/usc.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/boundary.h"
    "/home/monster/Desktop/pcl/features/include/pcl/features/range_image_border_extractor.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/features/impl" TYPE FILE FILES
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/board.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/flare.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/brisk_2d.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/cppf.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/cvfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/our_cvfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/crh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/don.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/feature.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/fpfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/fpfh_omp.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/gasd.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/gfpfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/integral_image2D.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/integral_image_normal.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/intensity_gradient.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/intensity_spin.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/linear_least_squares_normal.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/moment_invariants.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/moment_of_inertia_estimation.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/multiscale_feature_persistence.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/narf.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/normal_3d.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/normal_3d_omp.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/normal_based_signature.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/organized_edge_detection.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/pfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/pfhrgb.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/ppf.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/ppfrgb.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/shot.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/shot_lrf.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/shot_lrf_omp.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/shot_omp.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/spin_image.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/principal_curvatures.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/rift.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/rops_estimation.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/rsd.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/grsd.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/statistical_multiscale_interest_region_extraction.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/vfh.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/esf.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/3dsc.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/usc.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/boundary.hpp"
    "/home/monster/Desktop/pcl/features/include/pcl/features/impl/range_image_border_extractor.hpp"
    )
endif()

