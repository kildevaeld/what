
qt5_wrap_cpp(MOC window.hpp)
qt5_add_resources(${QRC_SOURCES} resources.qrc)

set(SOURCES
    ${MOC}
    ${QRC_SOURCES}
    window.cpp
)



add_executable(what main.cpp ${SOURCES})
target_link_libraries(what Qt5::Widgets Qt5::Quick Qt5::QuickWidgets libwhat hotkeys)