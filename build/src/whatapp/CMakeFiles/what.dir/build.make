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
include src/whatapp/CMakeFiles/what.dir/depend.make

# Include the progress variables for this target.
include src/whatapp/CMakeFiles/what.dir/progress.make

# Include the compile flags for this target's objects.
include src/whatapp/CMakeFiles/what.dir/flags.make

src/whatapp/moc_window.cpp: ../src/whatapp/window.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating moc_window.cpp"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/moc @/home/rasmusk/Development/C/what/build/src/whatapp/moc_window.cpp_parameters

src/whatapp/CMakeFiles/what.dir/main.cpp.o: src/whatapp/CMakeFiles/what.dir/flags.make
src/whatapp/CMakeFiles/what.dir/main.cpp.o: ../src/whatapp/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/whatapp/CMakeFiles/what.dir/main.cpp.o"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/what.dir/main.cpp.o -c /home/rasmusk/Development/C/what/src/whatapp/main.cpp

src/whatapp/CMakeFiles/what.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/what.dir/main.cpp.i"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rasmusk/Development/C/what/src/whatapp/main.cpp > CMakeFiles/what.dir/main.cpp.i

src/whatapp/CMakeFiles/what.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/what.dir/main.cpp.s"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rasmusk/Development/C/what/src/whatapp/main.cpp -o CMakeFiles/what.dir/main.cpp.s

src/whatapp/CMakeFiles/what.dir/main.cpp.o.requires:

.PHONY : src/whatapp/CMakeFiles/what.dir/main.cpp.o.requires

src/whatapp/CMakeFiles/what.dir/main.cpp.o.provides: src/whatapp/CMakeFiles/what.dir/main.cpp.o.requires
	$(MAKE) -f src/whatapp/CMakeFiles/what.dir/build.make src/whatapp/CMakeFiles/what.dir/main.cpp.o.provides.build
.PHONY : src/whatapp/CMakeFiles/what.dir/main.cpp.o.provides

src/whatapp/CMakeFiles/what.dir/main.cpp.o.provides.build: src/whatapp/CMakeFiles/what.dir/main.cpp.o


src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o: src/whatapp/CMakeFiles/what.dir/flags.make
src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o: src/whatapp/moc_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/what.dir/moc_window.cpp.o -c /home/rasmusk/Development/C/what/build/src/whatapp/moc_window.cpp

src/whatapp/CMakeFiles/what.dir/moc_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/what.dir/moc_window.cpp.i"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rasmusk/Development/C/what/build/src/whatapp/moc_window.cpp > CMakeFiles/what.dir/moc_window.cpp.i

src/whatapp/CMakeFiles/what.dir/moc_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/what.dir/moc_window.cpp.s"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rasmusk/Development/C/what/build/src/whatapp/moc_window.cpp -o CMakeFiles/what.dir/moc_window.cpp.s

src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.requires:

.PHONY : src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.requires

src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.provides: src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.requires
	$(MAKE) -f src/whatapp/CMakeFiles/what.dir/build.make src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.provides.build
.PHONY : src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.provides

src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.provides.build: src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o


src/whatapp/CMakeFiles/what.dir/window.cpp.o: src/whatapp/CMakeFiles/what.dir/flags.make
src/whatapp/CMakeFiles/what.dir/window.cpp.o: ../src/whatapp/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/whatapp/CMakeFiles/what.dir/window.cpp.o"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/what.dir/window.cpp.o -c /home/rasmusk/Development/C/what/src/whatapp/window.cpp

src/whatapp/CMakeFiles/what.dir/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/what.dir/window.cpp.i"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rasmusk/Development/C/what/src/whatapp/window.cpp > CMakeFiles/what.dir/window.cpp.i

src/whatapp/CMakeFiles/what.dir/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/what.dir/window.cpp.s"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rasmusk/Development/C/what/src/whatapp/window.cpp -o CMakeFiles/what.dir/window.cpp.s

src/whatapp/CMakeFiles/what.dir/window.cpp.o.requires:

.PHONY : src/whatapp/CMakeFiles/what.dir/window.cpp.o.requires

src/whatapp/CMakeFiles/what.dir/window.cpp.o.provides: src/whatapp/CMakeFiles/what.dir/window.cpp.o.requires
	$(MAKE) -f src/whatapp/CMakeFiles/what.dir/build.make src/whatapp/CMakeFiles/what.dir/window.cpp.o.provides.build
.PHONY : src/whatapp/CMakeFiles/what.dir/window.cpp.o.provides

src/whatapp/CMakeFiles/what.dir/window.cpp.o.provides.build: src/whatapp/CMakeFiles/what.dir/window.cpp.o


# Object files for target what
what_OBJECTS = \
"CMakeFiles/what.dir/main.cpp.o" \
"CMakeFiles/what.dir/moc_window.cpp.o" \
"CMakeFiles/what.dir/window.cpp.o"

# External object files for target what
what_EXTERNAL_OBJECTS =

src/whatapp/what: src/whatapp/CMakeFiles/what.dir/main.cpp.o
src/whatapp/what: src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o
src/whatapp/what: src/whatapp/CMakeFiles/what.dir/window.cpp.o
src/whatapp/what: src/whatapp/CMakeFiles/what.dir/build.make
src/whatapp/what: /usr/lib/libQt5QuickWidgets.so.5.8.0
src/whatapp/what: src/what/liblibwhat.a
src/whatapp/what: vendor/hotkey/libhotkeys.a
src/whatapp/what: /usr/lib/libQt5Quick.so.5.8.0
src/whatapp/what: /usr/lib/libQt5Qml.so.5.8.0
src/whatapp/what: /usr/lib/libQt5Network.so.5.8.0
src/whatapp/what: /usr/lib/libQt5Widgets.so.5.8.0
src/whatapp/what: /usr/lib/libQt5Gui.so.5.8.0
src/whatapp/what: /usr/lib/libQt5Core.so.5.8.0
src/whatapp/what: src/whatapp/CMakeFiles/what.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rasmusk/Development/C/what/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable what"
	cd /home/rasmusk/Development/C/what/build/src/whatapp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/what.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/whatapp/CMakeFiles/what.dir/build: src/whatapp/what

.PHONY : src/whatapp/CMakeFiles/what.dir/build

src/whatapp/CMakeFiles/what.dir/requires: src/whatapp/CMakeFiles/what.dir/main.cpp.o.requires
src/whatapp/CMakeFiles/what.dir/requires: src/whatapp/CMakeFiles/what.dir/moc_window.cpp.o.requires
src/whatapp/CMakeFiles/what.dir/requires: src/whatapp/CMakeFiles/what.dir/window.cpp.o.requires

.PHONY : src/whatapp/CMakeFiles/what.dir/requires

src/whatapp/CMakeFiles/what.dir/clean:
	cd /home/rasmusk/Development/C/what/build/src/whatapp && $(CMAKE_COMMAND) -P CMakeFiles/what.dir/cmake_clean.cmake
.PHONY : src/whatapp/CMakeFiles/what.dir/clean

src/whatapp/CMakeFiles/what.dir/depend: src/whatapp/moc_window.cpp
	cd /home/rasmusk/Development/C/what/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rasmusk/Development/C/what /home/rasmusk/Development/C/what/src/whatapp /home/rasmusk/Development/C/what/build /home/rasmusk/Development/C/what/build/src/whatapp /home/rasmusk/Development/C/what/build/src/whatapp/CMakeFiles/what.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/whatapp/CMakeFiles/what.dir/depend

