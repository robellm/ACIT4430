#!/bin/bash

echo "Building MLN"
sudo mln build -f ./project.mln

echo "Starting MLN"
sleep 5
sudo mln start -p project

echo "Waiting 40 seconds for intstances to deploy..."
sleep 40

sudo mln status -p project1

VAR=true

while $VAR; do
if sudo mln status -p project1 | grep -q "down"; then
    echo "One or more instances down."
    echo "Rebuilding project and instances..."
    sudo mln remove -p project -f
    sleep 15
    sudo mln build -f ./project.mln -r
    sleep 10
    sudo mln start -p project
    echo "Letting instaces start up. 40 seconds..."
    sleep 40
else
    echo "Finished"
    VAR=false
fi
done
