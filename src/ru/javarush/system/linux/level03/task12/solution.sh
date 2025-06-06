# Установка системного времени на 12:00:00, 1 ноября 2023 года
sudo timedatectl set-time "2023-11-01 12:00:00"

# Проверка текущего системного времени, чтобы убедиться, что время изменилось
sudo timedatectl status

# Включение синхронизации времени через NTP
sudo timedatectl set-ntp true

# Проверка статуса NTP-сервиса, чтобы убедиться, что он активен
sudo timedatectl status