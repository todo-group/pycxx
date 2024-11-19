cmake_minimum_required(VERSION 3.14)
include(cmake/prefix.cmake)
project(pycxx CXX)
include(cmake/postfix.cmake)

if(POLICY CMP0144)
  cmake_policy(SET CMP0144 NEW)
endif()
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

find_package(Python COMPONENTS Interpreter Development REQUIRED)

if(POLICY CMP0167)
  cmake_policy(SET CMP0167 NEW)
endif()
find_package(Boost COMPONENTS python)

include(pybind11)
include(nanobind)
FetchContent_MakeAvailable(${FetchContents})

if(Boost_FOUND)
  add_subdirectory(boost)
endif(Boost_FOUND)
add_subdirectory(pybind11)
add_subdirectory(nanobind)
