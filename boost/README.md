# Templates for Boost.Python

## Installation of Boost.Python

In the following, it is assumed that the Boost.Python has been compiled and installed into some place by using e.g., MateriApps Installer, etc, and BOOST_ROOT environment variable has been set properly.

## How to build samples

```
$ cd /somewhere/pycxx/boost
$ mkdir build
$ cd build
$ cmake ..
$ make
```

Python module ```cxxmod```, python test program ```pytest```, and C++ test program ```cxxtest``` will be built.

## Options to cmake

* ```BOOST_ROOT```: specify the place in which the Boost Library is installed (optional)

  ex) ```-DBOOST_ROOT=$HOME/boost/```
  
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
