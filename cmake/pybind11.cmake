include(FetchContent)
FetchContent_Declare(
  pybind11
  GIT_REPOSITORY https://github.com/pybind/pybind11.git
  GIT_TAG 8a099e44b3d5f85b20f05828d919d2332a8de841 # 2.11.1
)
list(APPEND FetchContents pybind11)
