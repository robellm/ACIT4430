global {
        project project }

superclass common {
        openstack {
                user_data {
                        apt-get update
                        wget http://apt.puppetlabs.com/puppet6-release-focal.deb          
                        dpkg -i puppet6-release-focal.deb
                        apt-get update
                        apt-get install puppet-agent -y
                        echo "10.0.65.149 website-environment.openstacklocal website-environment" >> /etc/hosts
                        wget https://raw.githubusercontent.com/robellm/ACIT4430/main/Project-I/Website-environment/puppet_agent.pp
                        /opt/puppetlabs/puppet/bin/puppet apply puppet_agent.pp }
                image Ubuntu-20.04-LTS
                flavor m1.small
                keypair master30key }
        network eth0 {
                net netsys_net
                address dhcp }
}

host vm_loadbalancer {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-loadbalancer.pem -delete }
        
host vm_database-1 {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-database-1.pem -delete }
host vm_database-2 {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-database-2.pem -delete }

        
host vm_webserver-1 {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-webserver-1.pem -delete }
host vm_webserver-2 {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-webserver-2.pem -delete }
        
host vm_nodejs{
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-nodejs.pem -delete }
        
host vm_server {
        superclass common
        find /etc/puppetlabs/puppet/ssl -name vm-server.pem -delete }
