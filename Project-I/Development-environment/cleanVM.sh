#!/bin/bash

echo -e "\n\n"
echo " ------------ ....... STOPPING All Instances ....... ------------ "
echo -e "\n"
sleep 3
mln stop -p project
echo -e "\n\n"
sleep 4

echo -e "\n"
echo " ------------ ....... ALL Instances Stopped ....... ------------ "
sleep 3

echo -e "\n\n"
echo " ------------ ....... REMOVING CERTIFICATES FROM AGENTS ....... ----------- "
echo "\n"
sleep 3
/opt/puppetlabs/bin/puppetserver ca clean vm-storage-server-1
/opt/puppetlabs/bin/puppetserver ca clean vm-storage-server-2
/opt/puppetlabs/bin/puppetserver ca clean vm-developer-server-1
/opt/puppetlabs/bin/puppetserver ca clean vm-developer-server-2
/opt/puppetlabs/bin/puppetserver ca clean vm-compiler-server-1
/opt/puppetlabs/bin/puppetserver ca clean vm-compiler-server-2
echo "\n\n"
sleep 3
echo " --------- ....... Certificates REMOVED! ....... ---------- "
echo -e "\n\n"
sleep 4

echo " -------- ********* REMOVING INSTANCES, PLEASE PRESS y then ENTER WHEN IT REQUESTS YOU! ********* ---------- "
echo -e "\n\n"
sleep 3
mln remove -p project
