class storageadmins {
 
          group { "storage-admins":
                  ensure => present, }
                  
          user { "kirk":
                  ensure => present,
                  home => '/home/kirk',
                  shell => '/bin/bash',
                  managehome => true,
                  groups => ["sudo", "storage-admins"],
                  comment => " This is Kirks' account ",
                  password => '', }
                  
           user { "rich":
                  ensure => present,
                  home => '/home/rich',
                  shell => '/bin/bash',
                  managehome => true,
                  groups => ["sudo", "storage-admins"],
                  comment => " This is Rich's account ",
                  password => '', }
}                  
