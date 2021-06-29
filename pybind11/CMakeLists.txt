cmake_minimum_required(VERSION 3.4)
project(pybind11 CXX)

add_subdirectory(extern/pybind11)

pybind11_add_module(cxxmod cxxmod.cpp)
configure_file(pytest.py.in pytest.py @ONLY)
add_executable(cxxtest cxxtest.cpp)
