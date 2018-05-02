#include <pybind11/pybind11.h>
#include "add.hpp"

namespace py = pybind11;

PYBIND11_MODULE(cxxmod, m) {
  m.doc() = "pybind11 example plugin";
  m.def("add", &add, "Add two numbers");
}
