include(FetchContent)
FetchContent_Declare(
  nanobind
  GIT_REPOSITORY https://github.com/wjakob/nanobind.git
  GIT_TAG b0e24d5b0ab0d518317d6b263a257ae72d4d29a2 # v1.5.2
)
list(APPEND FetchContents nanobind)
