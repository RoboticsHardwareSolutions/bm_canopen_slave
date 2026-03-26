cmake_minimum_required(VERSION 3.24)
project(objdict C)
set(CMAKE_C_STANDARD 11)

add_library(${PROJECT_NAME} STATIC bm_node.c)

target_include_directories(
        ${PROJECT_NAME} PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

target_link_libraries(
        ${PROJECT_NAME} PUBLIC co_stack
)
