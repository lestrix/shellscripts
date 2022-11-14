#!/bin/bash
INFO_HOST=$(hostname)
INFO_IP=$(hostname -I | cut -f1 -d ' ')
INFO_KERNEL=$(uname -r)
for i in {1..26}; do
	echo -n "="
done
echo ""
echo "Host: $INFO_HOST" 
echo "IP: $INFO_IP"  
echo "Kernel: $INFO_KERNEL"
for i in {1..26}; do
	echo -n "="
done
