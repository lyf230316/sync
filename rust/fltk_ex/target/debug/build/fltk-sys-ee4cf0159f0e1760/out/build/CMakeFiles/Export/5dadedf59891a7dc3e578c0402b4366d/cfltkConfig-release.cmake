#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "cfltk::cfltk" for configuration "Release"
set_property(TARGET cfltk::cfltk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(cfltk::cfltk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a"
  )

list(APPEND _cmake_import_check_targets cfltk::cfltk )
list(APPEND _cmake_import_check_files_for_cfltk::cfltk "/Users/msi/git/github/sync/rust/fltk_ex/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/lib/libcfltk.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
