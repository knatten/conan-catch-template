cmake_minimum_required(VERSION 3.25)
project(template_project)

set(CMAKE_CXX_STANDARD 20)

# Conan setup
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# Executable
add_executable(${PROJECT_NAME} main.cpp)
message(STATUS "libs ${CONAN_LIBS}")
target_link_libraries(${PROJECT_NAME} PRIVATE Catch2Main Catch2)

