# Помещаем игры в отдельный проект
project(games)

# В IDE таргеты будут отображаться в папке игры
set(CMAKE_FOLDER игры)

# Создаём папку result
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/result)

# Указываем папку для следующих скомпилированных экзешников
dv_set_bin_dir(${result_dir})

# Добавляем все папки
dv_add_all_subdirs()
