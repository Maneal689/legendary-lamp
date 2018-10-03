cmake_minimum_required(VERSION 2.6)

project(a.out)

set(EXECUTABLE_OUTPUT_PATH bin/)

include_directories(include/)
file(GLOB_RECURSE src_files src/*)
add_executable(a.out ${src_files})
