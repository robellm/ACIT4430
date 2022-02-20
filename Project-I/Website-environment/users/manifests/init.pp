class users {

          group { "webadmins":
                 ensure => present, }

          user { "tom":
                ensure => present, 
                home => '/home/tom',
                shell => '/bin/bash',
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
                
           user { "brady":
                ensure => present, 
                home => '/home/brady',
                shell => '/bin/bash',
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
           
           user { "janet":
                ensure => present, 
                home => '/home/janet',
                shell => '/bin/bash',
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
}
