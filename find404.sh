#!/bin/bash

LOG_FILE="Apache_2.4-PHP_5.5-5.6_queriesa.log"

grep "404" "$LOG_FILE"

COUNT=$(grep "404" "$LOG_FILE" | wc -l)

echo "Count of 404 errors: $COUNT"
