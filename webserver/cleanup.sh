#!/bin/bash

echo "Stopping instances..."
sudo mln stop -p project

echo "Removing instances..."
sleep 5
sudo mln remove -p project
