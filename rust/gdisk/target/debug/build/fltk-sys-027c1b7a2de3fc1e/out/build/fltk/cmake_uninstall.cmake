if(NOT EXISTS "/Users/lyf/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-027c1b7a2de3fc1e/out/build/fltk/install_manifest.txt")
   message(FATAL_ERROR
      "Cannot find install manifest: \"/Users/lyf/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-027c1b7a2de3fc1e/out/build/fltk/install_manifest.txt\"")
endif(NOT EXISTS "/Users/lyf/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-027c1b7a2de3fc1e/out/build/fltk/install_manifest.txt")

file(READ "/Users/lyf/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-027c1b7a2de3fc1e/out/build/fltk/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach(file ${files})
message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
   exec_program("/opt/homebrew/Cellar/cmake/3.26.3/bin/cmake"
      ARGS "-E remove -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
   )
   if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
   endif(NOT "${rm_retval}" STREQUAL 0)
endforeach(file)
