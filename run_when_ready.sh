#!/usr/bin/env bash

echo "Running Selenium in the background..."
/opt/bin/entry_point.sh &

printf "Waiting for Selenium..."
while ! curl http://localhost:4444/wd/hub/static/resource/hub.html &> /dev/null ; do
    printf "."
    sleep 1
done

if [ "${LOCAL_HOSTS_ENTRY}" != "" ]; then
    echo "Adding hosts entry:${LOCAL_HOSTS_ENTRY}"
    echo "${LOCAL_HOSTS_ENTRY}">>/etc/hosts
fi

echo ""
exec $@