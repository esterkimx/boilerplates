cmake_minimum_required(VERSION 3.4)
project(MyApplication)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/modules/" ${CMAKE_MODULE_PATH})

add_subdirectory(corrade EXCLUDE_FROM_ALL)
add_subdirectory(glfw EXCLUDE_FROM_ALL)
set(MAGNUM_WITH_GLFWAPPLICATION ON)
add_subdirectory(magnum EXCLUDE_FROM_ALL)

add_subdirectory(src)
