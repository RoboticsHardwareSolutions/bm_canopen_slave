# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-src")
  file(MAKE_DIRECTORY "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-src")
endif()
file(MAKE_DIRECTORY
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-build"
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix"
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/tmp"
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/src/rlibhelper-populate-stamp"
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/src"
  "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/src/rlibhelper-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/src/rlibhelper-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/paul/Yandex.Disk.localized/Development/Jobs/Bauman/projects/bm_lesson_canopen/build/Debug/_deps/rlibhelper-subbuild/rlibhelper-populate-prefix/src/rlibhelper-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
