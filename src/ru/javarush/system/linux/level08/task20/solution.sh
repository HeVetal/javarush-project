#!/bin/bash

# Указываем URL для загрузки файла
URL="https://example.com/sample_data.txt"

# Скачиваем файл с помощью команды wget и сохраняем его под именем data_backup.txt
wget -O data_backup.txt $URL

# Проверяем, существует ли файл data_backup.txt в текущей директории
if [ -f "data_backup.txt" ]; then
    # Если файл существует, выводим сообщение об успешной загрузке
    echo "Файл успешно скачан"
else
    # Если файл не существует, выводим сообщение об ошибке
    echo "Ошибка загрузки"
fi

