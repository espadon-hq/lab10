#!/bin/bash
SURNAME="Shimanskyi"

mkdir -p "$SURNAME"
mkdir -p "$SURNAME/YYY"
mkdir -p "$SURNAME/ZZZ"
mkdir -p "$SURNAME/QQQ"
echo "KI-405" > "$SURNAME/QQQ/Vitaliy_$SURNAME.txt"
echo "DATE: $(date +'%Y-%m-%d')" >> "$SURNAME/QQQ/Vitaliy_$SURNAME.txt"
echo "email: vitashi02@gmail.com" > "$SURNAME/QQQ/Email_$SURNAME.txt"

EMAIL_FILE="$SURNAME/QQQ/Email_$SURNAME.txt"
EMAIL_REGEX="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
EMAIL=$(grep -Eo "$EMAIL_REGEX" "$EMAIL_FILE")

if [[ $EMAIL =~ $EMAIL_REGEX ]]; then
    echo "Email in file $EMAIL_FILE is correct: $EMAIL"
else
    echo "Email in file $EMAIL_FILE not correct."
fi