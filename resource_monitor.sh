#!/bin/bash
# Alertas por uso alto de recursos

THRESHOLD_CPU=80
THRESHOLD_MEM=90
THRESHOLD_DISK=85

check_cpu() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
    if (( $(echo "$cpu_usage > $THRESHOLD_CPU" | bc -l) )); then
        echo "ALERTA: CPU usage $cpu_usage%"
    fi
}

check_memory() {
    local mem_usage=$(free | awk 'NR==2{printf "%.0f", $3*100/$2}')
    if [ "$mem_usage" -gt "$THRESHOLD_MEM" ]; then
        echo "ALERTA: Memory usage $mem_usage%"
    fi
}

check_disk() {
    local disk_usage=$(df / | awk 'NR==2{print $5}' | sed 's/%//')
    if [ "$disk_usage" -gt "$THRESHOLD_DISK" ]; then
        echo "ALERTA: Disk usage $disk_usage%"
    fi
}

check_cpu
check_memory
check_disk
