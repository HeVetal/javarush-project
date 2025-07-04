#!/bin/bash

# Получение списка MX-записей для домена linux.org с использованием команды dig
# Параметры:
# +short уменьшает объем вывода команды, отображая только наиболее необходимую информацию
# Тип записи MX указывает на почтовые серверы
# awk используется для извлечения информации только о почтовых серверах из результата

# Получаем и фильтруем MX-записи для домена linux.org
# Сначала вызываем dig с параметром MX, затем выбираем только имена серверов
dig linux.org MX +short| awk '{print $2}'