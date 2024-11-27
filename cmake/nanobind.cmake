# pycxx/cmake/nanobind.cmake

include(FetchContent)
FetchContent_Declare(
  nanobind
  GIT_REPOSITORY https://github.com/wjakob/nanobind.git
  GIT_TAG        v2.2.0
)
list(APPEND FetchContents nanobind)
