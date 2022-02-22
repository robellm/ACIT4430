$master = "website-environment.openstacklocal"
$master_ip = "10.0.65.149"
$interval = "600"

host { 'website-environment.openstacklocal':
        name => $master,
        ensure => present,
        host_aliases => "website-environment",
        ip => $master_ip
}
augeas { "puppet_default":
        context => "/files/etc/default/puppet",
        changes => ["set START yes"],
        notify => Service['puppet'],
}
augeas { "puppet.conf":
        context => "/files/etc/puppetlabs/puppet/puppet.conf",
        changes => [
                "set agent/server $master",
                "set agent/runinterval 600",
                ],
        notify => Service['puppet'],
}
service { "puppet":
        ensure => running,
        hasrestart => true,
        hasstatus => true,
        require => Augeas['puppet.conf','puppet_default'],
}
