# Install script for directory: C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_CMake

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Stereo")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/src" TYPE FILE FILES "C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_CMake/CMakeLists.txt")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/3rdParty/cmake_install.cmake")
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/libLWImage/cmake_install.cmake")
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/libStereo/cmake_install.cmake")
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/libIO/cmake_install.cmake")
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/convert/cmake_install.cmake")
  INCLUDE("C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/stereoDense/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "C:/Users/Yohann/Documents/GitHub/ADCensus/ADCensus_Build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
