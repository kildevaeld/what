cmake_minimum_required(VERSION 3.1)

project(what)





add_subdirectory(src/what)

find_package(Qt5Widgets REQUIRED)
find_package(Qt5Quick REQUIRED)
find_package(Qt5QuickWidgets REQUIRED)
include_directories(/usr/include/qt/QtGui/5.8.0/QtGui/)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/vendor/hotkey/UIGlobalHotKey)
add_subdirectory(vendor/hotkey)
add_subdirectory(src/whatapp)