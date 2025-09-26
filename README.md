# Домашнее задание к занятию "Резервное копирование" - Новиков Кирилл

### Задание 1

## Команда rsync:

`rsync -avh --checksum --exclude='.*' /home/kirill/ /tmp/backup/`

-a - архивный режим (сохраняет права, владельца, временные метки)

-v - подробный вывод (verbose)

-h - человеко-читаемые размеры файлов

--checksum - подсчет хэш-сумм для всех файлов (вместо сравнения по времени и размеру)

--exclude='.*' - исключает все файлы и директории, начинающиеся с точки (скрытые)

/home/kirill/ - исходная директория 

/tmp/backup/ - целевая директория


## Результат выполнения
<img width="726" height="494" alt="image" src="https://github.com/user-attachments/assets/1e2cf001-8c24-4593-9990-f8a87ff1591d" />

### Задание 2

[Конфигурационный файл backup_home.sh] (https://github.com/KiNo1703/8-03-hw2/blob/main/file/backup_home.sh)

[Файл crontab] (https://github.com/KiNo1703/8-03-hw2/blob/main/file/crontab)
