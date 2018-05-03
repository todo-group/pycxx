find_package(PythonInterp REQUIRED)

execute_process(COMMAND "${PYTHON_EXECUTABLE}" -c "from distutils.sysconfig import *; print get_python_inc()" OUTPUT_VARIABLE _INCLUDE_DIR OUTPUT_STRIP_TRAILING_WHITESPACE)
set(PYTHON_INCLUDE_DIR ${_INCLUDE_DIR} CACHE PATH "Python Include Path")
unset(_INCLUDE_DIR)

execute_process(COMMAND "${PYTHON_EXECUTABLE}" -c "from distutils.sysconfig import *; print PREFIX" OUTPUT_VARIABLE _PREFIX OUTPUT_STRIP_TRAILING_WHITESPACE)
find_library(PYTHON_LIBRARIES python${PYTHON_VERSION_MAJOR}.${PYTHON_VERSION_MINOR} PATHS "${_PREFIX}/lib" NO_DEFAULT_PATH)

message(STATUS "Python include dir: ${PYTHON_INCLUDE_DIR}")
message(STATUS "Python library: ${PYTHON_LIBRARIES}")

# from Modules/FindPythonLibs.cmake
# PYTHON_ADD_MODULE(<name> src1 src2 ... srcN) is used to build modules for python.
# PYTHON_WRITE_MODULES_HEADER(<filename>) writes a header file you can include
# in your sources to initialize the static python modules
function(PYTHON_ADD_MODULE _NAME )
  get_property(_TARGET_SUPPORTS_SHARED_LIBS
    GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS)
  option(PYTHON_ENABLE_MODULE_${_NAME} "Add module ${_NAME}" TRUE)
  option(PYTHON_MODULE_${_NAME}_BUILD_SHARED
    "Add module ${_NAME} shared" ${_TARGET_SUPPORTS_SHARED_LIBS})

  # Mark these options as advanced
  mark_as_advanced(PYTHON_ENABLE_MODULE_${_NAME}
    PYTHON_MODULE_${_NAME}_BUILD_SHARED)

  if(PYTHON_ENABLE_MODULE_${_NAME})
    if(PYTHON_MODULE_${_NAME}_BUILD_SHARED)
      set(PY_MODULE_TYPE MODULE)
    else()
      set(PY_MODULE_TYPE STATIC)
      set_property(GLOBAL  APPEND  PROPERTY  PY_STATIC_MODULES_LIST ${_NAME})
    endif()

    set_property(GLOBAL  APPEND  PROPERTY  PY_MODULES_LIST ${_NAME})
    add_library(${_NAME} ${PY_MODULE_TYPE} ${ARGN})
#    target_link_libraries(${_NAME} ${PYTHON_LIBRARIES})

    if(PYTHON_MODULE_${_NAME}_BUILD_SHARED)
      set_target_properties(${_NAME} PROPERTIES PREFIX "${PYTHON_MODULE_PREFIX}")
      if(WIN32 AND NOT CYGWIN)
        set_target_properties(${_NAME} PROPERTIES SUFFIX ".pyd")
      endif()
    endif()

  endif()
endfunction()
