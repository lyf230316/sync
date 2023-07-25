#
# UseFLTK.CMake - FLTK CMake environment configuration file for external projects.
#
# This file is deprecated and will be removed in FLTK 1.4.0 or later
#
# automatically generated - do not edit
#

include_directories("/Users/lyf/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-027c1b7a2de3fc1e/out/build/fltk;/Users/lyf/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk")

message(AUTHOR_WARNING
" * Warning: UseFLTK.cmake is deprecated and will be removed in FLTK 1.4.0
 * or later. Please use 'include_directories(\${FLTK_INCLUDE_DIRS})' or
 * 'target_include_directories(<target> PUBLIC|PRIVATE \${FLTK_INCLUDE_DIRS})'
 * instead of 'include(\${FLTK_USE_FILE})'.")
