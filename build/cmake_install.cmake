# Install script for directory: /home/monster/Desktop/pcl

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.11/pcl" TYPE FILE FILES "/home/monster/Desktop/pcl/build/include/pcl/pcl_config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpclconfigx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.11/Modules" TYPE FILE FILES
    "/home/monster/Desktop/pcl/cmake/Modules/FindClangFormat.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindDSSDK.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindEigen.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindEnsenso.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindFLANN.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindOpenNI.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindOpenNI2.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindPcap.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindQhull.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindRSSDK.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindRSSDK2.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FindSphinx.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/FinddavidSDK.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/Findlibusb-1.0.cmake"
    "/home/monster/Desktop/pcl/cmake/Modules/UseCompilerCache.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpclconfigx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.11" TYPE FILE FILES
    "/home/monster/Desktop/pcl/build/PCLConfig.cmake"
    "/home/monster/Desktop/pcl/build/PCLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/monster/Desktop/pcl/build/common/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/kdtree/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/octree/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/search/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/sample_consensus/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/filters/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/2d/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/geometry/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/io/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/features/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/ml/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/segmentation/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/visualization/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/surface/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/registration/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/keypoints/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/tracking/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/recognition/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/stereo/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/apps/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/cuda/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/outofcore/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/examples/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/gpu/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/people/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/simulation/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/test/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/tools/cmake_install.cmake")
  include("/home/monster/Desktop/pcl/build/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/monster/Desktop/pcl/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
