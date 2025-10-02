cmake_minimum_required(VERSION 3.14)
include(cmake/prefix.cmake)
project(pycxx CXX)
include(cmake/postfix.cmake)

if(POLICY CMP0144)
  cmake_policy(SET CMP0144 NEW)
endif()
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

find_package(Python REQUIRED COMPONENTS Interpreter Development.Module)

set(BP_VER "${Python_VERSION_MAJOR}${Python_VERSION_MINOR}")
find_package(Boost COMPONENTS python${BP_VER} NO_MODULE)
if(Boost_FOUND)
  message(STATUS "Found Boost: ${Boost_VERSION_STRING}")
endif(Boost_FOUND)

include(pybind11)
include(nanobind)
FetchContent_MakeAvailable(${FetchContents})

if(Boost_FOUND)
  add_subdirectory(boost)
endif(Boost_FOUND)
add_subdirectory(pybind11)
add_subdirectory(nanobind)
