#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script with sudo"
  exit 1
fi

hostnamectl set-hostname ubuntu22
echo "Hostname changed to ubuntu22"
