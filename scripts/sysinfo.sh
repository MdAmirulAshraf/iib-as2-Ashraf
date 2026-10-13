#!/bin/bash

echo "========================================"
echo "       SYSTEM INFORMATION REPORT        "
echo "========================================"
echo "Timestamp: $(date)"
echo "Hostname:  $(hostname)"
echo "Kernel:    $(uname -r)"
echo "Uptime:    $(uptime -p)"
echo ""

echo "--- Memory Usage ---"
free -h
echo ""

echo "--- Disk Usage ---"
df -h
echo ""
echo "========================================"
echo "Logging feature completed successfully!"

