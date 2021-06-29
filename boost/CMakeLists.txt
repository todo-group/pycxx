cmake_minimum_required(VERSION 3.4)
project(boostpython CXX)

find_package(Boost COMPONENTS python REQUIRED)
find_package(Python3 COMPONENTS Development)
include_directories(${Boost_INCLUDE_DIRS} ${Python3_INCLUDE_DIRS})

add_library(cxxmod MODULE cxxmod.cpp)
target_link_libraries(cxxmod ${Boost_LIBRARIES} ${Python3_LIBRARIES})
set_target_properties(cxxmod PROPERTIES PREFIX "")
configure_file(pytest.py.in pytest.py @ONLY)
add_executable(cxxtest cxxtest.cpp)
