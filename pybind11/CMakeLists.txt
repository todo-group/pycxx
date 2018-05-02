cmake_minimum_required(VERSION 2.8.12)
project(use_pybind11)
set(CMAKE_CXX_STANDARD 14)
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")

list(APPEND CMAKE_MODULE_PATH "${PYBIND11_ROOT}/tools")
include(pybind11Tools)
set(PYBIND11_INCLUDE_DIR "${PYBIND11_ROOT}/include" CACHE INTERNAL "")

pybind11_add_module(cxxmod cxxmod.cpp)
add_executable(cxxtest cxxtest.cpp)
