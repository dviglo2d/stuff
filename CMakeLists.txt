# Путь к исходникам движка
set(engine_dir "${CMAKE_SOURCE_DIR}/external/dviglo2d")

# Указываем минимальную версию CMake
include(${engine_dir}/cmake/cmake_min_version.cmake)
cmake_minimum_required(VERSION ${dv_cmake_min_version})

# Название проекта
project(stuff)

include(${engine_dir}/cmake/common.cmake)

# Папка для скомпилированных проектов
set(result_dir "${CMAKE_BINARY_DIR}/result")

# Создаём папку result
file(MAKE_DIRECTORY ${result_dir})

# Указываем папку для следующих скомпилированных экзешников
dv_set_bin_dir(${result_dir})

# Подключаем библиотеки
add_subdirectory(external)

add_subdirectory(games)
