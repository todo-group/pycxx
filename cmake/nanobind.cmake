# pycxx/cmake/nanobind.cmake

include(FetchContent)
FetchContent_Declare(
  nanobind
  GIT_REPOSITORY https://github.com/wjakob/nanobind.git
  GIT_TAG 784efa2a0358a4dc5432c74f5685ee026e20f2b6 # v2.2.0
)
list(APPEND FetchContents nanobind)
