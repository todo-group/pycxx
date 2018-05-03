#include <boost/python.hpp>
#include "add.hpp"

namespace py = boost::python;

BOOST_PYTHON_MODULE(cxxmod) {
  Py_Initialize();
  py::def("add", &add);
}
