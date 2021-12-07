include_directories(${Boost_INCLUDE_DIRS} ${Python_INCLUDE_DIRS})
add_library(boost_cxxmod MODULE cxxmod.cpp)
set_target_properties(boost_cxxmod PROPERTIES OUTPUT_NAME cxxmod)
set_target_properties(boost_cxxmod PROPERTIES PREFIX "")
target_link_libraries(boost_cxxmod ${Boost_LIBRARIES} ${Python_LIBRARIES})

configure_file(pytest.py.in pytest.py @ONLY)
add_test(NAME boost_pytest COMMAND ${Python_EXECUTABLE} pytest.py)

add_executable(boost_cxxtest cxxtest.cpp)
set_target_properties(boost_cxxtest PROPERTIES OUTPUT_NAME cxxtest)
add_test(NAME boost_cxxtest COMMAND cxxtest)
