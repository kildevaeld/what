

set(SOURCES 
    duk_console.c
    duk_module.c
    info.c
    what.c
)

set(HEADERS 
    duk_console.h
    duk_console.c
)


add_library(libwhat ${SOURCES})
target_link_libraries(libwhat duktape m)