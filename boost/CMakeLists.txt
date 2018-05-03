cmake_minimum_required(VERSION 2.8.12)
project(boostpython CXX)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Type of build" FORCE)
endif(NOT CMAKE_BUILD_TYPE)
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/config)
find_package(Boost REQUIRED COMPONENTS python)
find_package(Python) # config/FindPython.cmake
include_directories(${Boost_INCLUDE_DIR} ${PYTHON_INCLUDE_DIR})

python_add_module(cxxmod MODULE cxxmod.cpp)
target_link_libraries(cxxmod ${Boost_LIBRARIES} ${PYTHON_LIBRARIES})
configure_file(pytest.py.in pytest.py @ONLY)

add_executable(cxxtest cxxtest.cpp)
