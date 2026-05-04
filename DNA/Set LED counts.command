#!/bin/bash
# Set LED counts.command v1.0.0
# Double-click to reconfigure the DNA installation's LED counts.

cd "$(dirname "$0")"

echo "============================================"
echo "  DNA — set LED counts"
echo "============================================"
echo
echo "Make sure Max's [serial] is CLOSED before continuing,"
echo "or the upload will fail."
echo

read -p "Strand A LED count: " A
read -p "Strand B LED count: " B

if [[ -z "$A" || -z "$B" ]]; then
    echo "ERROR: both counts are required."
    read -p "Press Enter to close..."
    exit 1
fi

echo
python3 ./dna_config.py "$A" "$B"

echo
read -p "Press Enter to close..."
