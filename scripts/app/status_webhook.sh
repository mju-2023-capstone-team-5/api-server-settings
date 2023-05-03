#!/bin/bash
echo "sleep $DEPLOY_DELAY sec for init server..."
sleep $DEPLOY_DELAY

echo "test status and send it to discord webhook"
python3 /root/app/python/webhook/status.py