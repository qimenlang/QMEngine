cmake_minimum_required(VERSION 3.23)

project(QMEngine VERSION 1.0.0 LANGUAGES C CXX)

set(CXX_STANDARD 17)

set(CXX_STANDARD_REQUIRED ON)

set(CXX_EXTENSIONS OFF)

option(COMPILE_EXE "compile excutable or not" ON)

add_subdirectory(CMakeTestModule)
# add_subdirectory(thirdparty/json)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/)
include(AddGitSubmodule)
add_git_submodule(thirdparty/json)
add_git_submodule(thirdparty/glfw)


if(COMPILE_EXE)
    add_subdirectory(runtime)
    message("Compiling exe")
else()
    message("not Compiling exe")
endif()