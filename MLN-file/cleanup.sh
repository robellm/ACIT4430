#!/bin/bash

echo "STOPPING MLN"
sleep 2
mln stop -p project
sleep 1
echo " "
echo "Instances Stopped."
sleep 5

echo "\n\n"

echo "REMOVING CERTIFICATES"
sleep 2
/opt/puppetlabs/puppet/bin/puppet cert clean vm-storage-server1
/opt/puppetlabs/puppet/bin/puppet cert clean vm-storage-server2
/opt/puppetlabs/puppet/bin/puppet cert clean vm-developer-server1
/opt/puppetlabs/puppet/bin/puppet cert clean vm-developer-server2
/opt/puppetlabs/puppet/bin/puppet cert clean vm-compiler-server1
/opt/puppetlabs/puppet/bin/puppet cert clean vm-compiler-server2
echo "Certificates removed"
sleep 5

echo "\n\n"

echo "REMOVING MLN, PLEASE PRESS y WHEN IT REQUESTS YOU!"
sleep 4
mln remove -p project
