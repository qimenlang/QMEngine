cmake_minimum_required(VERSION 3.23)

project(QMEngine VERSION 1.0.0 LANGUAGES C CXX)

set(CXX_STANDARD 17)

set(CXX_STANDARD_REQUIRED ON)

set(CXX_EXTENSIONS OFF)

option(COMPILE_EXE "compile excutable or not" OFF)

add_subdirectory(CMakeTestModule)

if(COMPILE_EXE)
    add_subdirectory(runtime)
    message("Compiling exe")
else()
    message("not Compiling exe")
endif()