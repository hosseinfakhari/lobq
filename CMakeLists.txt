cmake_minimum_required(VERSION 3.10)
project(lobq)

set(CMAKE_CXX_STANDARD 17)

add_library(lobq SHARED library.cpp library.h)