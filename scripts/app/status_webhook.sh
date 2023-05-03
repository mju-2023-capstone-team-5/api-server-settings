#!/bin/bash
echo "sleep 30 sec for init server..."
sleep 30

echo "test status and send it to discord webhook"
python3 /root/app/python/webhook/status.py