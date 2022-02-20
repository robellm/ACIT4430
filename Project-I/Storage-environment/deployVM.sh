#! /bin/bash

echo -e "\n"
echo " ----------------- .......... Building the VMs' ......... --------------- "
echo -e "\n"
sleep 3
mln build -f agent.mln
sleep 3

echo -e "\n"
echo " ----------------- ......... Starting the VMs' ......... ----------------- "
echo -e "\n"
sleep 3
mln start -p project
sleep 3

echo -e "\n"
echo " ---------- ... PLEASE WAIT FOR THE INSTANCES TO BE DEPOLOYED ... ---------- "
echo -e "\n"
sleep 35
echo " ---------------- ........ THANKS FOR BEING PATIENT ........ ---------------- "
sleep 4
echo -e "\n"
echo " --------------- .......... Current status of VMs ......... ----------------- "
echo -e "\n"
sleep 3
mln status -p project

VAR=true

while $VAR; do
if mln status -p project | grep -q "down"; then
    echo -e "\n"
    echo " ---------- ******* One or more instances are down ********* ---------- "
    echo -e "\n"
    sleep 3
    echo " --- ***** Rebuilding N Starting the 'errored' instances again ***** --- "
    echo -e "\n"
    sleep 4
    echo " -------- ***** PLEASE PRESS y then ENTER, WHEN REQUESTED! ***** --------- "
    sleep 2
    mln remove -p project
    sleep 15

    echo -e "\n"
    mln build -f agent.mln
    sleep 5
    echo -e "\n"
    sleep 3
    mln start -p project
    sleep 35

    echo -e "\n"
    echo " ----- *************** New status of the project **************** ----- "
    echo -e "\n"
    sleep 3
    mln status -p project

else
    echo -e "\n"
    sleep 3
    echo " ---------- ***** ALL INSTANCES ARE UP & RUNNING ***** ---------- "
    sleep 3
    VAR=false
fi
done

echo -e "\n"
echo " ---------- ....... Signing CERTIFICATES FROM THE AGENTS ....... ---------- "
echo -e "\n"
sleep 15
echo " ------------- ........ PLEASE WAIT FOR A FEW MOMENT ........ --------------- "
echo -e "\n"
sleep 65
echo " --------------- ......... THANKS FOR BEING PATIENT ......... ------------------ "
echo -e "\n"
sleep 25
/opt/puppetlabs/bin/puppetserver ca sign --all

echo -e "\n"
echo " ---------- ....... Listing all signed certificates from agents ..... ----------- "
echo -e "\n"
sleep 3
/opt/puppetlabs/bin/puppetserver ca list --all
echo -e "\n"
