cmake_minimum_required(VERSION 3.1)

project(what)


include_directories(${CMAKE_CURRENT_SOURCE_DIR}/vendor/duktape)


add_subdirectory(vendor/duktape)

add_subdirectory(src/parser)
include_directories(src/parser)

add_subdirectory(src/what)
include_directories(src/what)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5QuickWidgets REQUIRED)
find_package(Qt5Sql REQUIRED)

## Hotkeys
if (UNIX AND NOT APPLE)
    include_directories(/usr/include/qt/QtGui/5.8.0/QtGui/) # UIGlobalHotkeys needs this on linux
endif(UNIX AND NOT APPLE)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/vendor/hotkey/UIGlobalHotKey)
add_subdirectory(vendor/hotkey)

add_subdirectory(src/whatapp)


#
# I use QtCreator and I need the lines below, so do not ask. :-)
#

file(
    GLOB_RECURSE PROJECT_FILES FOLLOW_SYMLINKS
    *.qrc *.qml *.txt *.c *.cpp *.hpp *.h *.in *.cmake *.sh *.md AUTHORS, *.js
)

add_custom_target(
    QTCREATOR_FALLBACK ALL
    COMMENT "Feel free to ignore this target, but please do not remove it."
    SOURCES ${PROJECT_FILES}
)
