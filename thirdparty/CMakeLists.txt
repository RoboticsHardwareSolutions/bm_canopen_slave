add_library(rtt STATIC
        RTT/RTT/SEGGER_RTT_ASM_ARMv7M.S
        RTT/RTT/SEGGER_RTT_printf.c
        RTT/RTT/SEGGER_RTT.c
)

target_compile_definitions(rtt PUBLIC -DBUFFER_SIZE_DOWN=64)
target_compile_definitions(rtt PUBLIC -DBUFFER_SIZE_UP=1024)

target_include_directories(rtt
        PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/RTT/RTT>
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/RTT/Config>
)

add_subdirectory(rcan)
add_subdirectory(rtimer)
add_subdirectory(co_stack)