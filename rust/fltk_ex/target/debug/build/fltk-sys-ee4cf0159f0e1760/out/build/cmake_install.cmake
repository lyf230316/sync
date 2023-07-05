# Install script for directory: /Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib" TYPE STATIC_LIBRARY FILES "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/libcfltk.a")
  if(EXISTS "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_box.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_browser.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_button.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_dialog.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_draw.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_enums.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_group.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_image.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_input.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_lock.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_macros.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_menu.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_misc.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_printer.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_surface.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_table.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_text.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_tree.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_utils.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_valuator.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_widget.h;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_widget.hpp;/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk/cfl_window.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/include/cfltk" TYPE FILE FILES
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_box.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_browser.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_button.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_dialog.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_draw.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_enums.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_group.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_image.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_input.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_lock.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_macros.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_menu.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_misc.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_printer.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_surface.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_table.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_text.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_tree.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_utils.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_valuator.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_widget.h"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_widget.hpp"
    "/Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/include/cfl_window.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig.cmake"
         "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/CMakeFiles/Export/5dadedf59891a7dc3e578c0402b4366d/cfltkConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk" TYPE FILE FILES "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/CMakeFiles/Export/5dadedf59891a7dc3e578c0402b4366d/cfltkConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfig-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk" TYPE FILE FILES "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/CMakeFiles/Export/5dadedf59891a7dc3e578c0402b4366d/cfltkConfig-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk/cfltkConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/share/cmake/cfltk" TYPE FILE FILES "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/cfltkConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
