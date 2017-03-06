
qt5_wrap_cpp(MOC 
    UIGlobalHotKey/uglobalhotkeys.h
    UIGlobalHotKey/ukeysequence.h
    )

set(SOURCES
    ${MOC}
    UIGlobalHotKey/uexception.cpp
    UIGlobalHotKey/uglobalhotkeys.cpp
    UIGlobalHotKey/ukeysequence.cpp    
)

add_library(hotkeys ${SOURCES})
target_link_libraries(hotkeys Qt5::Widgets Qt5::Gui)

if(UNIX AND NOT APPLE)
    set(LINUX TRUE)
endif()


if (LINUX)
    target_link_libraries(hotkeys xcb xcb-keysyms)
elseif (APPLE)
	target_link_libraries(hotkeys "-framework Carbon")
endif(LINUX)