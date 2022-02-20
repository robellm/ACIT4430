class users {
        group { "developers":
                ensure => present, }

        user { "bob":
                ensure => present,
                home => '/home/bob',
                shell => '/bin/bash',
                managehome => true, 
                groups => ["sudo"],
                comment => "This is Bobbys' account",
                password => '$1$U0KD8Cmb$xNfIcFDHDit8GcfjPH6UZ.', }

        user { "janet":
                ensure => present,
                home => '/home/janet',
                shell => '/bin/bash',
                managehome => true, 
                groups => ["sudo", "developers"],
                comment => "This is Janets' account",
                password => '$1$L7npvSSD$pCL5NI6Trt0G9zlnJMy7Y.', }

        user { "alice":
                ensure => present,
                home => '/home/alice',
                shell => '/bin/bash',
                managehome => true, 
                groups => ["sudo"],
                comment => "This is Alice account",
                password => '$1$OcFCcwWm$IHLoomw9mGrPQ//3uMPjR1', }

        user { "tim":
                ensure => present,
                home => '/home/tim',
                shell => '/bin/bash',
                managehome => true, 
                groups => ["sudo", "developers"],
                comment => "This is Tims' account",
                password => '$1$J2kc1BoM$ryDl0hNdEsn8CasYhdB3a.', }
}
