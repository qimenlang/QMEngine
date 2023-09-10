set(LIB_SOURCES TinyLib.cpp)

set(LIB_HEADERS TinyLib.h)

add_library(TinyLib STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(TinyLib PUBLIC "./")