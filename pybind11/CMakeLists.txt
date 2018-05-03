cmake_minimum_required(VERSION 2.8.12)
project(pybind11 CXX)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Type of build" FORCE)
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")

set(CMAKE_CXX_STANDARD 14)
list(APPEND CMAKE_MODULE_PATH "${PYBIND11_ROOT}/tools")
include(pybind11Tools)
set(PYBIND11_INCLUDE_DIR "${PYBIND11_ROOT}/include" CACHE INTERNAL "")

pybind11_add_module(cxxmod cxxmod.cpp)
configure_file(pytest.py.in pytest.py @ONLY)

add_executable(cxxtest cxxtest.cpp)
