#!/bin/bash

# Получение информации о текущей таблице маршрутизации и сохранение в файл routing_table.txt
ip route show > routing_table.txt
