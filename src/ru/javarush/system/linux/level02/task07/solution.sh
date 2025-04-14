# Создание нового пользователя с именем tester_user с помощью команды adduser
sudo adduser tester_user

# Смена shell для пользователя tester_user на /bin/zsh с использованием команды usermod
sudo usermod --shell /bin/zsh

# Проверка, изменен ли shell пользователя путем поиска строки в файле /etc/passwd
grep -q "^tester_user:.*:/bin/zsh$" /etc/passwd

