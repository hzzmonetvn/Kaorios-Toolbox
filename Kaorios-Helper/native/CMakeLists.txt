# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
cmake_minimum_required(VERSION 3.22)
project(KaoriosHelper LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(NOT ANDROID OR NOT ANDROID_ABI STREQUAL "arm64-v8a")
    message(FATAL_ERROR "Helper native build requires Android arm64-v8a")
endif()

set(LOADER_CPP "${ZYGOTE_LOADER_SOURCE}/runtime/src/main/cpp")
add_library(kaorios_helper SHARED
    helper.cpp
    "${ZYGOTE_LOADER_MAIN}"
    "${LOADER_CPP}/dex.cpp"
    "${LOADER_CPP}/atexit.cpp"
    "${COPG_SOURCE}/src/spoof_module.cpp"
)
target_include_directories(kaorios_helper PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${LOADER_CPP}"
    "${LOADER_CPP}/ext"
    "${COPG_SOURCE}/src/include"
)
target_link_libraries(kaorios_helper PRIVATE log dl)

add_executable(copg_controller "${COPG_SOURCE}/src/unified_controller.cpp")
target_include_directories(copg_controller PRIVATE "${COPG_SOURCE}/src/include")

foreach(target kaorios_helper copg_controller)
    target_compile_options(${target} PRIVATE -Os -ffunction-sections -fdata-sections
        -fvisibility=hidden -fvisibility-inlines-hidden)
    target_link_options(${target} PRIVATE -Wl,--gc-sections -Wl,--exclude-libs,ALL
        -Wl,--hash-style=both -Wl,-z,max-page-size=16384)
endforeach()
