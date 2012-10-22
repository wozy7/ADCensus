# Install script for directory: C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/src/libIO" TYPE FILE FILES
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/CMakeLists.txt"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/io_tiff.c"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/io_tiff.h"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/io_png.c"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/io_png.h"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/draw.c"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/draw.h"
    "C:/Users/Yohann/Desktop/ADCensus/ADCensus_CMake/libIO/nan.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

