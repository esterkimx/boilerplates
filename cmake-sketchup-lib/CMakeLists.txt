cmake_minimum_required(VERSION 3.10)
project(NativeRubyModule)

if (NOT RUBY_VERSION)
  set(RUBY_VERSION 2.7)
endif()
if (NOT RUBY_ARCH)
  set(RUBY_ARCH win32_x64)
endif()

set(MODULE_NAME ${PROJECT_NAME})
add_compile_definitions(MODULE_NAME=${MODULE_NAME})

add_library(lib SHARED src/lib.cpp)
set_target_properties(lib PROPERTIES OUTPUT_NAME ${MODULE_NAME} SUFFIX .so)
target_include_directories(lib PUBLIC ${CMAKE_SOURCE_DIR}/ruby/${RUBY_VERSION}/${RUBY_ARCH}/include)
target_link_libraries(lib PUBLIC ${CMAKE_SOURCE_DIR}/ruby/${RUBY_VERSION}/${RUBY_ARCH}/lib/ruby.lib)
