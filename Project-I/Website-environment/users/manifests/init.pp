class users {

          group { "webadmins":
                 ensure => present, }

          user { "tom":
                ensure => present, 
                home => '/home/tom',
                shell => '/bin/bash',
                comment => " This is Toms' account ",
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
                
           user { "brady":
                ensure => present, 
                home => '/home/brady',
                shell => '/bin/bash',
                comment => " This is Bradys' account ",
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
           
           user { "janet":
                ensure => present, 
                home => '/home/janet',
                shell => '/bin/bash',
                comment => " This is Janets' account ",
                groups => ["sudo", "webadmins"],
                managehome => true,
                password => '', }
}
