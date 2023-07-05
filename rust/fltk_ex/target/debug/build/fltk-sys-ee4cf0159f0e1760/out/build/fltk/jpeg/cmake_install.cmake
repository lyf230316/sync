# Install script for directory: /Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk/lib/libfltk_jpeg.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfltk_jpeg.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfltk_jpeg.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfltk_jpeg.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/FL/images" TYPE FILE FILES
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg/jconfig.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg/jerror.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg/jmorecfg.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg/jpeglib.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk/jpeg/fltk_jpeg_prefix.h"
    )
endif()

