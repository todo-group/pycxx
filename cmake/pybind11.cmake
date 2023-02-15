include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG        0bd8896a4010f2d91b2340570c24fa08606ec406 # v2.10.3
)
list(APPEND FetchContents pybind11)
