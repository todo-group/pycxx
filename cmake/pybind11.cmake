include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG 5b0a6fc2017fcc176545afe3e09c9f9885283242 #2.10.4
)
list(APPEND FetchContents pybind11)
