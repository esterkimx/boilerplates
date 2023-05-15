cmake_minimum_required(VERSION 3.4)

project(run)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/modules/" ${CMAKE_MODULE_PATH})

add_subdirectory(corrade EXCLUDE_FROM_ALL)

add_subdirectory(src)
