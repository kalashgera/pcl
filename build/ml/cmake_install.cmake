# Install script for directory: /home/monster/Desktop/pcl/ml

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/monster/Desktop/pcl/build/lib/libpcl_ml.so.1.11.0.99"
    "/home/monster/Desktop/pcl/build/lib/libpcl_ml.so.1.11"
    "/home/monster/Desktop/pcl/build/lib/libpcl_ml.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_ml.so"
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monster/Desktop/pcl/build/ml/pcl_ml-1.11.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml" TYPE FILE FILES
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/branch_estimator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/feature_handler.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/multi_channel_2d_comparison_feature.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/multi_channel_2d_comparison_feature_handler.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/multi_channel_2d_data_set.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/multiple_data_2d_example_index.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/point_xy_32i.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/point_xy_32f.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/regression_variance_stats_estimator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/stats_estimator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/densecrf.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/pairwise_potential.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/permutohedral.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/svm_wrapper.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/svm.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/kmeans.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml/dt" TYPE FILE FILES
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_forest.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_forest_evaluator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_forest_trainer.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_tree.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_tree_evaluator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_tree_trainer.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/dt/decision_tree_data_provider.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml/ferns" TYPE FILE FILES
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/ferns/fern.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/ferns/fern_evaluator.h"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/ferns/fern_trainer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml/impl/dt" TYPE FILE FILES
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/dt/decision_forest_evaluator.hpp"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/dt/decision_forest_trainer.hpp"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/dt/decision_tree_evaluator.hpp"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/dt/decision_tree_trainer.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml/impl/ferns" TYPE FILE FILES
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/ferns/fern_evaluator.hpp"
    "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/ferns/fern_trainer.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_mlx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/ml/impl/svm" TYPE FILE FILES "/home/monster/Desktop/pcl/ml/include/pcl/ml/impl/svm/svm_wrapper.hpp")
endif()

