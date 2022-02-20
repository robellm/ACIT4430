class db {

          package { "mongodb":
                    ensure => present, }
          
          service { "mongodb":
                    ensure => running, }
                    
}
