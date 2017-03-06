
qt5_wrap_cpp(MOC window.hpp backend.hpp)
qt5_add_resources(QRC_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/resources.qrc)

set(SOURCES
    ${MOC}
    ${QRC_SOURCES}
    window.cpp
    preferences.cpp
    backend.cpp
)



add_executable(what main.cpp ${SOURCES})
target_link_libraries(what Qt5::Widgets Qt5::Quick Qt5::QuickWidgets libwhat hotkeys)
