# Install script for directory: /home/monster/Desktop/pcl/outofcore

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_outofcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/monster/Desktop/pcl/build/lib/libpcl_outofcore.so.1.11.0.99"
    "/home/monster/Desktop/pcl/build/lib/libpcl_outofcore.so.1.11"
    "/home/monster/Desktop/pcl/build/lib/libpcl_outofcore.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so.1.11.0.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so.1.11"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_outofcore.so"
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_outofcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/monster/Desktop/pcl/build/outofcore/pcl_outofcore-1.11.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_outofcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/outofcore" TYPE FILE FILES
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/metadata.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_base_data.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_node_data.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_iterator_base.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_breadth_first_iterator.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_depth_first_iterator.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/boost.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/cJSON.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/octree_base.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/octree_base_node.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/octree_abstract_node_container.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/octree_disk_container.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/octree_ram_container.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/outofcore_impl.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_outofcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/outofcore/impl" TYPE FILE FILES
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/outofcore_breadth_first_iterator.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/outofcore_depth_first_iterator.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/octree_base.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/octree_base_node.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/octree_disk_container.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/octree_ram_container.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/monitor_queue.hpp"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/impl/lru_cache.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_outofcorex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl/outofcore/visualization" TYPE FILE FILES
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/axes.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/camera.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/common.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/geometry.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/grid.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/object.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/outofcore_cloud.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/scene.h"
    "/home/monster/Desktop/pcl/outofcore/include/pcl/outofcore/visualization/viewport.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/monster/Desktop/pcl/build/outofcore/tools/cmake_install.cmake")

endif()

