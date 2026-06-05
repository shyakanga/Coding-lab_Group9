#!/bin/bash

heart_log="active_logs/heart_rate_log.log"
temp_log="active_logs/temperature_log.log"
water_log="active_logs/water_usage_log.log"
critical_report="reports/critical_alerts.txt"

process_vitals () {

    echo ""
    echo "Scanning heart_rate_log.log for CRITICAL entries..."
    echo "CRITICAL HEART RATE EVENTS " >> "$critical_report"

    grep "CRITICAL" "$heart_log" 2>/dev/null \
        | awk -F ' \\| ' '{printf "Timestamp: %-20s  Device: %-20s  Heart Rate: %s BPM\n", $1, $2, $3}' \
              >> "$critical_report"


    echo "Scanning temperature_log.log for CRITICAL entries..."
    echo "CRITICAl TEMPERATURE EVENTS" >> "$critical_report"

    grep "CRITICAL" "$temp_log" 2>/dev/null \
        | awk -F ' \\| ' '{printf "Timestamp: %-20s  Device: %-20s  Temperature: %s C\n", $1, $2, $3}' \
              >> "$critical_report"

    echo ""
    echo "Critical alerts saved to: $critical_report"
}