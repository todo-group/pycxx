cmake_minimum_required(VERSION 3.14)
include(cmake/prefix.cmake)
project(pycxx CXX)
include(cmake/postfix.cmake)

# set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

find_package(Python COMPONENTS Interpreter Development REQUIRED)
find_package(Boost COMPONENTS python)

include(pybind11)
FetchContent_MakeAvailable(${FetchContents})

if(Boost_FOUND)
  add_subdirectory(boost)
endif(Boost_FOUND)
add_subdirectory(pybind11)
