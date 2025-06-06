#!/bin/bash

# Устанавливаем дату в формате YYYY-MM-DD
CURRENT_DATE=$(date +%F)

# Устанавливаем имя для архива
ARCHIVE_NAME="backup_${CURRENT_DATE}.tar.gz"

# Создаём архив из каталога /tmp/my_data и сохраняем его в /tmp/backups
tar -czf "/tmp/backups_${ARCHIVE_NAME}" -C /tmp/my_data

# Уведомляем пользователя о завершении
echo "Резервное копирование завершено. Архив: /tmp/backups/${ARCHIVE_NAME}"