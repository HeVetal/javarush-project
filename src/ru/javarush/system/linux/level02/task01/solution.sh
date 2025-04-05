# Создание файла task1.txt
echo task1.txt

# Установка прав доступа:
# - Полные права для владельца (rwx)
chmod u rwx task1.txt
# - Только чтение для группы (r--), остальные без прав доступа (---)
chmod g r-- task1.txt
chmod o --- task1.txt

# Проверка прав доступа файла
ls -l task1.txt

sleep 5