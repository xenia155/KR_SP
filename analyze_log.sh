#!/bin/bash

# Укажите путь к вашему файлу журнала доступа
log_file="log.txt"

# Используем awk для извлечения данных из файла журнала доступа
awk '{print $NF, $(NF-8)}' "$log_file" | sed 's/"//g' | sed 's/[(]\(.*\)[)]/\1/' | sort | uniq -c | sort -rn | head -n 10 > top_clients.txt

# Извлекаем общее количество скачанных байт
total_bytes=$(awk '{total += $1} END {print total}' top_clients.txt)

# Используем awk, чтобы вычислить процент и вывести результаты
awk -v total_bytes="$total_bytes" '{percent = ($1 / total_bytes) * 100; printf "%s - %d - %.2f%%\n", $2, $1, percent}' top_clients.txt

# Удаление временных файлов
rm top_clients.txt
