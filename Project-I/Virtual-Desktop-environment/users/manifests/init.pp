class users {

         user { "john":
                ensure => present,
                home => '/home/john',
                shell => '/bin/bash',
                managehome => true,
                comment => " This is Johns' account ",
                password => '', }
                
         user { "alice":
                ensure => present,
                home => '/home/alice',
                shell => '/bin/bash',
                managehome => true,
                comment => " This is Alices' account ",
                password => '', }
                  
         user { "bob":
                ensure => present,
                home => '/home/bob',
                shell => '/bin/bash',
                managehome => true,
                comment => " This is Bobs' account ",
                password => '', }
                
         user { "kate":
                ensure => present,
                home => '/home/kate',
                shell => '/bin/bash',
                managehome => true,
                comment => " This is Kates' account ",
                password => '', }
}
