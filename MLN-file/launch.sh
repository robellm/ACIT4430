#!/bin/bash
echo " "
echo "Building MLN now ... "
echo " "
sleep 2
mln build -f project.mln
echo " "
echo " "

echo "Starting MLN now ... "
echo " "
mln start -p project
echo " "
echo " "

echo "The current status of MLN ... "
echo " "
sleep 1
mln status -p project

VAR=true

while $VAR; do
if mln status -p project | grep -q "down"; then
    echo " "
    echo "One or more instances are down .. "
    echo "Rebuilding project and instances..."
    echo " "
    mln start -p project
    sleep 5
    mln status -p project
else
    echo " "
    echo "Finished"
    echo "ALL instances are up & running correctly"
    VAR=false
fi
done

echo " "
echo "Signing CERTIFICATES FROM THE AGENTS.. PLEASE WAIT A FEW SEC'S"
echo " "
sleep 10
/opt/puppetlabs/puppet/bin/puppet cert sign --all
echo " "
echo " "
sleep 2
echo "Listing ALL the signed certificates"
echo " "
sleep 2
/opt/puppetlabs/puppet/bin/puppet cert list --all
echo " "
