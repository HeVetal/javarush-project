#!/bin/bash

# Используем команду grep для поиска строк с ключевым словом "ERROR" в файле /var/log/syslog
# Затем с помощью awk извлекаем источник ошибки, который указан в квадратных скобках
# Сортируем источники ошибок и подсчитываем их количество с помощью sort и uniq -c

grep "ERROR" /var/log/syslog | awk '{print $3}' | sort | uniq -c