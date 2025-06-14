#!/bin/bash

# Проверка доступности сервера по адресу 127.0.0.1
ping -c 1 127.0.0.1

# Проверка прослушивания порта 22 с помощью ss
ss -tuln | grep ":22"

# Проверка порта 22 с помощью netstat (альтернатива)
netstat - tuln | grep ":22"

# Проверка доступности порта 22 с помощью nc
nc -zv 127.0.0.1 22