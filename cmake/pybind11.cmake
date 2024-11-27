# pycxx/cmake/pybind11.cmake

include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG        v2.13.6
)
list(APPEND FetchContents pybind11)
