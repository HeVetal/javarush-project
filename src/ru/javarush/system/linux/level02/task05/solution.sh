# Создаем пользователя new_user с помощью команды adduser
# Пользователю будет задан произвольный пароль в процессе выполнения команды
adduser new_user
# Проверяем, что пользователь new_user действительно создан
# Ищем информацию о пользователе в файле /etc/passwd
grep "^new_user:" /etc/passwd

sleep 5
