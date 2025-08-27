#!/bin/bash

# Проверка, что входной файл существует
if [ ! -f "input_text.txt" ]; then
    echo "Файл input_text.txt не найден!"
    exit 1
fi

# Чтение текста из файла
text=$(<input_text.txt)

# Переворот текста с помощью встроенного Bash
reversed_text=""
len=${#text}
for (( i=$len-1; i>=0; i-- )); do
    reversed_text="$reversed_text${text:$i:1}"
done

# Запись результата в output_text.txt
echo "$reversed_text" > output_text.txt

echo "Текст успешно перевернут и сохранён в output_text.txt"
