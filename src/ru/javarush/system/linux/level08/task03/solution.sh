#!/bin/bash

# Рекурсивный поиск строк с текстом "login failed" во всех файлах текущей директории,
# исключая строки, содержащие слово "debug".
grep -r "login failed" . | grep  -v "debug"