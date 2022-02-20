class janet {

          user { "janet":
                ensure => present,
                home => '/home/janet',
                shell => '/bin/bash',
                managehome => true,
                comment => " This is Janets' account ",
                password => '', }
} 
