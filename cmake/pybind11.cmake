# pycxx/cmake/pybind11.cmake

include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG a2e59f0e7065404b44dfe92a28aca47ba1378dc4 # v2.13.6
)
list(APPEND FetchContents pybind11)
