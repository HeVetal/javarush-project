##!/bin/bash

# Используем grep для поиска строк с ключевым словом "error" в файле `/var/log/syslog` без учета регистра.
# С помощью cut оставляем только временной штамп (первые 15 символов) и само сообщение (после 16-го символа).
grep -i "error" /var/log/syslog | cut -с -15,16-


