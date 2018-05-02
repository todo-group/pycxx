# Templates for pybind11

## Installation of pybind11

Pybind11 is a header-only library. Just download the l aest version from https://github.com/pybind/pybind11/releases, extract files and place the source tree wherever you want, e.g.,

```
$ cd $HOME
$ wget -O pybind11-2.2.3.tar.gz https://github.com/pybind/pybind11/archive/v2.2.3.tar.gz
$ tar zxvf pybind11-2.2.3.tar.gz
```

## How to build samples

```
$ cd /somewhere/pycxx/pybind11
$ mkdir build
$ cd build
$ cmake .. -DPYBIND11_ROOT=...
$ make
```

Python module ```cxxmod``` and C++ test program ```cxxtest``` will be built.

## Options to cmake

* ```PYBIND11_ROOT```: specify the place of pybind11 source tree (reqired)

  ex) ```-DPYBIND11_ROOT=$HOME/pybind11/```
  
* ```CMAKE_C_COMPILER```: specify C compiler (option)

  ex) ```-DCMAKE_C_COMPILER=gcc```

* ```CMAKE_CXX_COMPILER```: spacify C++ compiler (option)

  ex) ```-DCMAKE_CXX_COMPILER=g++```
  
* ```DPYTHON_EXECUTABLE```: specify Python interpreter

  ex) ```-DPYTHON_EXECUTABLE=/opt/local/bin/python2```

## Tests

* Python module

  ```
  $ python
  >>> import cxxmod
  >>> cxxmod.add(1,3)
  4
  ```
  
* C++ test program

  ```
  $ ./cxxtest
  add(1,2) = 3
  ```