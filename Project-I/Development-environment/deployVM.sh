#! /bin/bash

echo -e "\n\n"
echo " --------------- ....... Building the VMs' ....... --------------- "
echo -e "\n\n"
sleep 3
mln build -f agent.mln
sleep 3

echo -e "\n\n"
echo " --------------- ....... Starting the VMs' ....... --------------- "
echo -e "\n\n"
sleep 3
mln start -p agent
sleep 3

echo -e "\n\n\n"
echo " ---------- ... PLEASE WAIT FOR THE INSTANCES TO BE DEPOLOYED ... ---------- "
echo -e "\n\n"
sleep 40
echo " --------------- ....... THANKS FOR BEING PATIENT ....... --------------- "
echo -e "\n\n"
sleep 5

echo -e "\n\n"
echo " --------------- ....... Current status of VMs ....... --------------- "
echo -e "\n"
sleep 3
mln status -p project

VAR=true

while $VAR; do
if mln status -p project | grep -q "down"; then
    echo -e "\n\n"
    echo " ---------- ***** One or more instances are down ***** ---------- "
    echo -e "\n\n"
    sleep 3
    echo " --- ***** Rebuilding N Starting the 'errored' instances again ***** --- "
    echo -e "\n\n"
    sleep 4
    echo " ---------- ***** PLEASE PRESS y then ENTER, WHEN REQUESTED! ***** ---------- "
    echo "\n"
    sleep 2
    mln remove -p project
    sleep 20

    echo -e "\n\n"
    mln build -f project.mln
    sleep 10
    echo "\n\n"
    sleep 4
    mln start -p project
    sleep 40

    echo -e "\n\n"
    echo " ---------- ***** New status of the project ***** --------- "
    echo "\n"
    sleep 3
    mln status -p project

else
    echo -e "\n\n"
    sleep 3
    echo " ---------- ***** ALL INSTANCES ARE UP & RUNNING ***** ---------- "
    echo "\n\n"
    sleep 3
    VAR=false
fi
done

echo -e "\n"
echo " ---------- ....... Signing CERTIFICATES FROM THE AGENTS ....... ---------- "
echo -e "\n"
sleep 15
echo " --------------- ........ PLEASE WAIT FOR A FEW SEC'S ........ --------------- "
echo -e "\n"
sleep 65
echo " --------------- ......... THANKS FOR BEING PATIENT ......... ------------------ "
echo -e "\n\n"
sleep 15
/opt/puppetlabs/bin/puppetserver ca sign --all

echo -e "\n\n"
echo " ---------- ....... Listing all signed certificates from agents ..... ----------- "
echo -e "\n"
sleep 3
/opt/puppetlabs/bin/puppetserver ca list --all
echo -e "\n\n"

sleep 4
echo " ------------ ....... Listing all the IPs ....... ---------- "
echo -e "\n"
sleep 3
mln status -p project
