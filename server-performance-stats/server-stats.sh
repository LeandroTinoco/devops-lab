#!/bin/bash

# Function to get total CPU usage
get_cpu_usage() {
    echo "Total CPU Usage:"
    mpstat | awk '$3 ~ /[0-9.]+/ { print 100 - $12 }'
}

# Function to get total memory usage
get_memory_usage() {
    echo "Total Memory Usage:"
    free -h | awk 'NR==2{printf "Used: %s (%.2f%%)\nFree: %s\n", $3, $3*100/$2, $4}'
}

# Function to get total disk usage
get_disk_usage() {
    echo "Total Disk Usage:"
    df -h | awk '$NF=="/"{printf "Used: %s (%.2f%%)\nFree: %s\n", $3, $3*100/$2, $4}'
}

# Function to get top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "Top 5 Processes by CPU Usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# Function to get top 5 processes by memory usage
get_top_memory_processes() {
    echo "Top 5 Processes by Memory Usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Function to get additional stats
get_additional_stats() {
    echo "Additional Stats:"
    echo "OS Version: $(uname -r)"
    echo "Uptime: $(uptime -p)"
    echo "Load Average: $(cat /proc/loadavg | awk '{print $1, $2, $3}')"
    echo "Logged In Users: $(who | wc -l)"
    echo "Failed Login Attempts: $(grep 'Failed password' /var/log/auth.log | wc -l)"
}

# Main script execution
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes
get_additional_stats