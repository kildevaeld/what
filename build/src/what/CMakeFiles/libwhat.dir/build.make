# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rasmusk/Development/C/what

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rasmusk/Development/C/what/build

# Include any dependencies generated for this target.
include src/what/CMakeFiles/libwhat.dir/depend.make

# Include the progress variables for this target.
include src/what/CMakeFiles/libwhat.dir/progress.make

# Include the compile flags for this target's objects.
include src/what/CMakeFiles/libwhat.dir/flags.make

src/what/CMakeFiles/libwhat.dir/duk_console.c.o: src/what/CMakeFiles/libwhat.dir/flags.make
src/what/CMakeFiles/libwhat.dir/duk_console.c.o: ../src/what/duk_console.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/what/CMakeFiles/libwhat.dir/duk_console.c.o"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libwhat.dir/duk_console.c.o   -c /home/rasmusk/Development/C/what/src/what/duk_console.c

src/what/CMakeFiles/libwhat.dir/duk_console.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libwhat.dir/duk_console.c.i"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rasmusk/Development/C/what/src/what/duk_console.c > CMakeFiles/libwhat.dir/duk_console.c.i

src/what/CMakeFiles/libwhat.dir/duk_console.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libwhat.dir/duk_console.c.s"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rasmusk/Development/C/what/src/what/duk_console.c -o CMakeFiles/libwhat.dir/duk_console.c.s

src/what/CMakeFiles/libwhat.dir/duk_console.c.o.requires:

.PHONY : src/what/CMakeFiles/libwhat.dir/duk_console.c.o.requires

src/what/CMakeFiles/libwhat.dir/duk_console.c.o.provides: src/what/CMakeFiles/libwhat.dir/duk_console.c.o.requires
	$(MAKE) -f src/what/CMakeFiles/libwhat.dir/build.make src/what/CMakeFiles/libwhat.dir/duk_console.c.o.provides.build
.PHONY : src/what/CMakeFiles/libwhat.dir/duk_console.c.o.provides

src/what/CMakeFiles/libwhat.dir/duk_console.c.o.provides.build: src/what/CMakeFiles/libwhat.dir/duk_console.c.o


src/what/CMakeFiles/libwhat.dir/duk_module.c.o: src/what/CMakeFiles/libwhat.dir/flags.make
src/what/CMakeFiles/libwhat.dir/duk_module.c.o: ../src/what/duk_module.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/what/CMakeFiles/libwhat.dir/duk_module.c.o"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libwhat.dir/duk_module.c.o   -c /home/rasmusk/Development/C/what/src/what/duk_module.c

src/what/CMakeFiles/libwhat.dir/duk_module.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libwhat.dir/duk_module.c.i"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rasmusk/Development/C/what/src/what/duk_module.c > CMakeFiles/libwhat.dir/duk_module.c.i

src/what/CMakeFiles/libwhat.dir/duk_module.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libwhat.dir/duk_module.c.s"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rasmusk/Development/C/what/src/what/duk_module.c -o CMakeFiles/libwhat.dir/duk_module.c.s

src/what/CMakeFiles/libwhat.dir/duk_module.c.o.requires:

.PHONY : src/what/CMakeFiles/libwhat.dir/duk_module.c.o.requires

src/what/CMakeFiles/libwhat.dir/duk_module.c.o.provides: src/what/CMakeFiles/libwhat.dir/duk_module.c.o.requires
	$(MAKE) -f src/what/CMakeFiles/libwhat.dir/build.make src/what/CMakeFiles/libwhat.dir/duk_module.c.o.provides.build
.PHONY : src/what/CMakeFiles/libwhat.dir/duk_module.c.o.provides

src/what/CMakeFiles/libwhat.dir/duk_module.c.o.provides.build: src/what/CMakeFiles/libwhat.dir/duk_module.c.o


src/what/CMakeFiles/libwhat.dir/info.c.o: src/what/CMakeFiles/libwhat.dir/flags.make
src/what/CMakeFiles/libwhat.dir/info.c.o: ../src/what/info.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/what/CMakeFiles/libwhat.dir/info.c.o"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libwhat.dir/info.c.o   -c /home/rasmusk/Development/C/what/src/what/info.c

src/what/CMakeFiles/libwhat.dir/info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libwhat.dir/info.c.i"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rasmusk/Development/C/what/src/what/info.c > CMakeFiles/libwhat.dir/info.c.i

src/what/CMakeFiles/libwhat.dir/info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libwhat.dir/info.c.s"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rasmusk/Development/C/what/src/what/info.c -o CMakeFiles/libwhat.dir/info.c.s

src/what/CMakeFiles/libwhat.dir/info.c.o.requires:

.PHONY : src/what/CMakeFiles/libwhat.dir/info.c.o.requires

src/what/CMakeFiles/libwhat.dir/info.c.o.provides: src/what/CMakeFiles/libwhat.dir/info.c.o.requires
	$(MAKE) -f src/what/CMakeFiles/libwhat.dir/build.make src/what/CMakeFiles/libwhat.dir/info.c.o.provides.build
.PHONY : src/what/CMakeFiles/libwhat.dir/info.c.o.provides

src/what/CMakeFiles/libwhat.dir/info.c.o.provides.build: src/what/CMakeFiles/libwhat.dir/info.c.o


src/what/CMakeFiles/libwhat.dir/what.c.o: src/what/CMakeFiles/libwhat.dir/flags.make
src/what/CMakeFiles/libwhat.dir/what.c.o: ../src/what/what.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/what/CMakeFiles/libwhat.dir/what.c.o"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/libwhat.dir/what.c.o   -c /home/rasmusk/Development/C/what/src/what/what.c

src/what/CMakeFiles/libwhat.dir/what.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/libwhat.dir/what.c.i"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/rasmusk/Development/C/what/src/what/what.c > CMakeFiles/libwhat.dir/what.c.i

src/what/CMakeFiles/libwhat.dir/what.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/libwhat.dir/what.c.s"
	cd /home/rasmusk/Development/C/what/build/src/what && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/rasmusk/Development/C/what/src/what/what.c -o CMakeFiles/libwhat.dir/what.c.s

src/what/CMakeFiles/libwhat.dir/what.c.o.requires:

.PHONY : src/what/CMakeFiles/libwhat.dir/what.c.o.requires

src/what/CMakeFiles/libwhat.dir/what.c.o.provides: src/what/CMakeFiles/libwhat.dir/what.c.o.requires
	$(MAKE) -f src/what/CMakeFiles/libwhat.dir/build.make src/what/CMakeFiles/libwhat.dir/what.c.o.provides.build
.PHONY : src/what/CMakeFiles/libwhat.dir/what.c.o.provides

src/what/CMakeFiles/libwhat.dir/what.c.o.provides.build: src/what/CMakeFiles/libwhat.dir/what.c.o


# Object files for target libwhat
libwhat_OBJECTS = \
"CMakeFiles/libwhat.dir/duk_console.c.o" \
"CMakeFiles/libwhat.dir/duk_module.c.o" \
"CMakeFiles/libwhat.dir/info.c.o" \
"CMakeFiles/libwhat.dir/what.c.o"

# External object files for target libwhat
libwhat_EXTERNAL_OBJECTS =

src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/duk_console.c.o
src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/duk_module.c.o
src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/info.c.o
src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/what.c.o
src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/build.make
src/what/liblibwhat.a: src/what/CMakeFiles/libwhat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library liblibwhat.a"
	cd /home/rasmusk/Development/C/what/build/src/what && $(CMAKE_COMMAND) -P CMakeFiles/libwhat.dir/cmake_clean_target.cmake
	cd /home/rasmusk/Development/C/what/build/src/what && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libwhat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/what/CMakeFiles/libwhat.dir/build: src/what/liblibwhat.a

.PHONY : src/what/CMakeFiles/libwhat.dir/build

src/what/CMakeFiles/libwhat.dir/requires: src/what/CMakeFiles/libwhat.dir/duk_console.c.o.requires
src/what/CMakeFiles/libwhat.dir/requires: src/what/CMakeFiles/libwhat.dir/duk_module.c.o.requires
src/what/CMakeFiles/libwhat.dir/requires: src/what/CMakeFiles/libwhat.dir/info.c.o.requires
src/what/CMakeFiles/libwhat.dir/requires: src/what/CMakeFiles/libwhat.dir/what.c.o.requires

.PHONY : src/what/CMakeFiles/libwhat.dir/requires

src/what/CMakeFiles/libwhat.dir/clean:
	cd /home/rasmusk/Development/C/what/build/src/what && $(CMAKE_COMMAND) -P CMakeFiles/libwhat.dir/cmake_clean.cmake
.PHONY : src/what/CMakeFiles/libwhat.dir/clean

src/what/CMakeFiles/libwhat.dir/depend:
	cd /home/rasmusk/Development/C/what/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rasmusk/Development/C/what /home/rasmusk/Development/C/what/src/what /home/rasmusk/Development/C/what/build /home/rasmusk/Development/C/what/build/src/what /home/rasmusk/Development/C/what/build/src/what/CMakeFiles/libwhat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/what/CMakeFiles/libwhat.dir/depend

