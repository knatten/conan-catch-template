cmake_minimum_required(VERSION 3.20)
project(template_project)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -fsanitize=undefined -Wall")

# Conan setup
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

# Executable
add_executable(${PROJECT_NAME} tests.cpp catch_main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE CONAN_PKG::catch2)

