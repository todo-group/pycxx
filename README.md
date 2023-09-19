![workflow](https://github.com/todo-group/pycxx/actions/workflows/build.yml/badge.svg)

# pycxx: Templates for Python-C++ bindings

* boost: example for Boost.Python
* pybind11: example for pybind11
* nanobind: example for nanobind

## Boost.Python

It is assumed that the Boost.Python has been compiled and installed into some place by using e.g., MateriApps Installer, etc, and BOOST_ROOT environment variable has been set properly.

## Pybind11

Pybind11 is a header-only library. It is automatically downloaded.

## Nanobind

Nanobind11 is automatically downloaded.

## How to build samples and run tests

```bash
cd /somewhere/pycxx
cmake -B build
cmake --build build
cmake --build build --target test
```

## Options to cmake

* ```BOOST_ROOT```: specify the place in which the Boost Library is installed

  ex) ```-DBOOST_ROOT=$HOME/boost/```
  
* ```CMAKE_CXX_COMPILER```: spacify C++ compiler

  ex) ```-DCMAKE_CXX_COMPILER=g++```
  
* ```PYTHON_EXECUTABLE```: specify Python interpreter

  ex) ```-DPYTHON_EXECUTABLE=/opt/local/bin/python3```
