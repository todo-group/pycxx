nanobind_add_module(nanobind_cxxmod add.hpp cxxmod.cpp)
set_target_properties(nanobind_cxxmod PROPERTIES OUTPUT_NAME cxxmod CXX_STANDARD 17)

configure_file(pytest.py.in pytest.py @ONLY)
add_test(NAME nanobind_pytest COMMAND ${Python_EXECUTABLE} pytest.py)

add_executable(nanobind_cxxtest cxxtest.cpp)
set_target_properties(nanobind_cxxtest PROPERTIES OUTPUT_NAME cxxtest)
add_test(NAME nanobind_cxxtest COMMAND cxxtest)
