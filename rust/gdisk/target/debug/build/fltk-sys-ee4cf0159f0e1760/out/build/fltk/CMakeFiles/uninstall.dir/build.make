# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include fltk/CMakeFiles/uninstall.dir/compiler_depend.make

# Include the progress variables for this target.
include fltk/CMakeFiles/uninstall.dir/progress.make

fltk/CMakeFiles/uninstall:
	cd /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk && /usr/local/Cellar/cmake/3.26.3/bin/cmake -P /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk/cmake_uninstall.cmake

uninstall: fltk/CMakeFiles/uninstall
uninstall: fltk/CMakeFiles/uninstall.dir/build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
fltk/CMakeFiles/uninstall.dir/build: uninstall
.PHONY : fltk/CMakeFiles/uninstall.dir/build

fltk/CMakeFiles/uninstall.dir/clean:
	cd /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : fltk/CMakeFiles/uninstall.dir/clean

fltk/CMakeFiles/uninstall.dir/depend:
	cd /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk /Users/msi/.cargo/git/checkouts/fltk-rs-9307d2141514d51d/34d9fff/fltk-sys/cfltk/fltk /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk /Users/msi/git/github/sync/rust/gdisk/target/debug/build/fltk-sys-ee4cf0159f0e1760/out/build/fltk/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fltk/CMakeFiles/uninstall.dir/depend

