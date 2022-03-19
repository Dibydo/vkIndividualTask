# Copyright 2022 by Yaroslav Zhovtyak
cmake_minimum_required(VERSION 3.1)

project(greek)

### Test definitions ###

configure_file(CMakeLists.txt.in googletest-download/CMakeLists.txt)
execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
execute_process(COMMAND ${CMAKE_COMMAND} --build .
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )

add_subdirectory(${CMAKE_BINARY_DIR}/googletest-src
        ${CMAKE_BINARY_DIR}/googletest-build)

enable_testing()
add_subdirectory(test)

### Source definitions ###

include_directories("${PROJECT_SOURCE_DIR}/include")

file(GLOB sources
	"${PROJECT_SOURCE_DIR}/include/indTask/*.h"
	"${PROJECT_SOURCE_DIR}/src/*.c")

add_executable(greek ${sources})

if(ENABLE_CLANG_TIDY)

    find_program(CLANG_TIDY_BIN clang-tidy-10)
    find_program(RUN_CLANG_TIDY_BIN run-clang-tidy-10.py)

    if(CLANG_TIDY_BIN STREQUAL "CLANG_TIDY_BIN-NOTFOUND")
        message(FATAL_ERROR "unable to locate clang-tidy-10")
    endif()

    if(RUN_CLANG_TIDY_BIN STREQUAL "RUN_CLANG_TIDY_BIN-NOTFOUND")
        message(FATAL_ERROR "unable to locate run-clang-tidy-10.py")
    endif()

    list(APPEND RUN_CLANG_TIDY_BIN_ARGS
        -clang-tidy-binary ${CLANG_TIDY_BIN}
        -header-filter=.*
        -checks=misc*,perf*,cppc*,read*,mode*
    )
    add_custom_target(
        tidy
        COMMAND ${RUN_CLANG_TIDY_BIN} ${RUN_CLANG_TIDY_BIN_ARGS}
        COMMENT "running clang tidy"
    )
endif()

if(ENABLE_CLANG_FORMAT)
  file(GLOB_RECURSE ALL_CXX_SOURCE_FILES
         ${PROJECT_SOURCE_DIR}/include/indTask/*.h
         ${PROJECT_SOURCE_DIR}/src/*.c
  )
  add_custom_target(
    clang-format
    COMMAND /usr/bin/clang-format
    -i
    -style=LLVM
    ${ALL_CXX_SOURCE_FILES}
  )

endif()

if(ENABLE_CPPLINT)
  file(GLOB_RECURSE ALL_CXX_SOURCE_FILES
         ${PROJECT_SOURCE_DIR}/src/*.c
  )

  add_custom_target(
      cpplint
      COMMAND /usr/local/bin/cpplint 
      --extensions=c,cpp,h,hpp
      --linelength=80
      --filter=-runtime/casting,-build/include_subdir,-build/include_order,-whitespace/indent,-build/include_what_you_use,-runtime/printf
      ${ALL_CXX_SOURCE_FILES}
  )
endif()

if(ENABLE_COVERAGE)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lgcov --coverage")
endif()

option(ENABLE_CPPCHECK "Build all tests." OFF) # Makes boolean 'test' available.
if(ENABLE_CPPCHECK)

    list(APPEND CPPCHECK_CMAKE_ARGS
        "-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}"
    )
    include(ExternalProject)
    ExternalProject_Add(
        cppcheck
        GIT_REPOSITORY      https://github.com/danmar/cppcheck.git
        GIT_TAG             1.79
        GIT_SHALLOW         1
        CMAKE_ARGS          ${CPPCHECK_CMAKE_ARGS}
        PREFIX              ${CMAKE_BINARY_DIR}/external/cppcheck/prefix
        TMP_DIR             ${CMAKE_BINARY_DIR}/external/cppcheck/tmp
        STAMP_DIR           ${CMAKE_BINARY_DIR}/external/cppcheck/stamp
        DOWNLOAD_DIR        ${CMAKE_BINARY_DIR}/external/cppcheck/download
        SOURCE_DIR          ${CMAKE_BINARY_DIR}/external/cppcheck/src
        BINARY_DIR          ${CMAKE_BINARY_DIR}/external/cppcheck/build
    )

    list(APPEND CPPCHECK_ARGS
        --enable=all
        --suppress=missingIncludeSystem
        --std=c11
        --verbose
        --error-exitcode=1
        --language=c
        --check-config
        -DMAIN = main
        -I ${CMAKE_SOURCE_DIR}/include/indTask/*.h
        ${CMAKE_SOURCE_DIR}/src/*.c
    )

    add_custom_target(
        check
        COMMAND ${CMAKE_BINARY_DIR}/bin/cppcheck ${CPPCHECK_ARGS}
        COMMENT "running cppcheck"
    )
endif()

