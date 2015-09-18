#!/usr/bin/env bash

echo "Running Selenium in the background..."
/opt/bin/entry_point.sh &

echo "Waiting for Selenium..."
while ! curl http://localhost:4444/wd/hub/static/resource/hub.html &> /dev/null ; do
    printf "."
    sleep 1
done

exec $@