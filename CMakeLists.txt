cmake_minimum_required(VERSION 3.23)

project(QMEngine VERSION 1.0.0 LANGUAGES C CXX)

add_library(TinyLib STATIC TinyLib.cpp)

add_executable(QMEngine main.cpp)

target_link_libraries(QMEngine TinyLib)