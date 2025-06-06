#!/bin/bash

# Проверяем, передан ли аргумент (URL веб-сайта)
if [ -z "$1" ]; then
  echo "Ошибка: Не указан URL веб-сайта."
  echo "Использование: $0 <URL>"
  exit 1
fi

# Сохраняем URL в переменную
URL=$1

# Определяем имя лог-файла
LOG_FILE="site_check.log"

# Проверяем доступность сайта с помощью команды ping
# Опция -c 1 указывает, что нужно отправить только 1 пакет
ping -c 1 "$URL" > /dev/null 2>&1

# Получаем текущую дату и время
CURRENT_TIME=$(date "+%a %b %d %T %Z %Y")

# Проверяем результат выполнения команды ping
if [ $? -eq 0 ]; then
  echo "$URL $CURRENT_TIME: Сайт доступен" >> $LOG_FILE
else
  echo "$URL $CURRENT_TIME: Сайт недоступен" >> $LOG_FILE
fi