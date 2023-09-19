#include <nanobind/nanobind.h>
#include "add.hpp"

NB_MODULE(cxxmod, m) {
  m.doc() = "nanobind example plugin";
  m.def("add", &add, "Add two numbers");
}
