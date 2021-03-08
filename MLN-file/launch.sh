#!/bin/bash

echo "Building MLN"
sleep 2
mln build -f ./project.mln
echo "\n\n\n "

echo "Starting MLN"
sleep 3
mln start -p project
echo "\n\n\n"

echo "Waiting 10 seconds for intstances to deploy..."
sleep 10
mln status -p project

VAR=true

while $VAR; do
if sudo mln status -p project | grep -q "down"; then
    echo "\n\n"
    echo "One or more instances down.."
    echo "Rebuilding project and instances..."
    sleep 2
    mln remove -p project
    sleep 5
    mln build -f ./project.mln
    sleep 5
    mln start -p project
    echo "\n\n"
    echo "Letting instaces start up.. 10 seconds..."
    sleep 10
else
    echo "Finished"
    VAR=false
fi
done

echo "Signing CERTIFICATES FROM THE AGENT"
sleep 2
/opt/puppetlabs/puppet/bin/puppet cert sign --all
echo "\n\n"
sleep 3
echo "Listing All the signed certificates"
sleep 2
/opt/puppetlabs/puppet/bin/puppet cert list --all
