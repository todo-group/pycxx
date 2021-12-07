include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG        f7b499615e14d70ab098a20deb0cdb3889998a1a # v2.8.1
)
list(APPEND FetchContents pybind11)
