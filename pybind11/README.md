# Templates for pybind11

## Pybind11

Pybind11 is a header-only library. It is included as a submodule in extern/pybind11.

## How to build samples

```
$ cd /somewhere/pycxx/pybind11
$ mkdir build
$ cd build
$ cmake ..
$ make
```

Python module ```cxxmod```, python test program ```pytest```, and C++ test program ```cxxtest``` will be built.

## Options to cmake

* ```CMAKE_CXX_COMPILER```: spacify C++ compiler (option)

  ex) ```-DCMAKE_CXX_COMPILER=g++```
  
* ```DPYTHON_EXECUTABLE```: specify Python interpreter

  ex) ```-DPYTHON_EXECUTABLE=/opt/local/bin/python3```

## Tests

* Python module

  ```
  $ ./pytest.py
  add(1,2) = 3
  ```
    
* C++

  ```
  $ ./cxxtest
  add(1,2) = 3
  ```
