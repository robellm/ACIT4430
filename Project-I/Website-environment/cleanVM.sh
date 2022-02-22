#!/bin/bash

echo -e "\n"
echo " ------------ ....... STOPPING All Instances ....... ------------ "
echo -e "\n"
sleep 3
mln stop -p project
echo -e "\n"
sleep 2
echo " ------------ ....... ALL Instances Stopped ....... ------------ "
sleep 4

echo -e "\n"
echo " ------------ ....... REMOVING CERTIFICATES FROM AGENTS ....... ----------- "
echo -e "\n"
sleep 3
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-loadbalancer
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-database-server-1
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-database-server-2
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-webserver-1
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-webserver-2
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-nodejs
/opt/puppetlabs/bin/puppetserver ca clean --certname vm-machine
echo -e "\n"
sleep 3
echo " -------------- ......... Certificates REMOVED! ......... ---------------- "
echo -e "\n"
sleep 4

echo " -------- ********* REMOVING INSTANCES, PLEASE PRESS y then ENTER WHEN IT REQUESTS YOU! ********* ---------- "
sleep 3
mln remove -p project
