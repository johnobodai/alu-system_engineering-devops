#!/bin/bash

# Step 1: Check Nginx error logs
sudo tail -f /var/log/nginx/error.log &

# Step 2: Check server logs
sudo tail -f /var/log/syslog &

# Step 3: Identify and fix root cause of issue

# Step 4: Verify issue is resolved
ab -n 2000 -c 100 http://localhost/ # Change URL as per your requirement

# Step 5: Monitor logs and server performance regularly

