pybind11_add_module(pybind11_cxxmod cxxmod.cpp)
set_target_properties(pybind11_cxxmod PROPERTIES OUTPUT_NAME cxxmod)

configure_file(pytest.py.in pytest.py @ONLY)
add_test(NAME pybind11_pytest COMMAND ${Python_EXECUTABLE} pytest.py)

add_executable(pybind11_cxxtest cxxtest.cpp)
set_target_properties(pybind11_cxxtest PROPERTIES OUTPUT_NAME cxxtest)
add_test(NAME pybind11_cxxtest COMMAND cxxtest)
