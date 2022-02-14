 package { "php5-memcache":
          ensure => present, } 
 
 service { "php5-memcache":
          ensure => running,
          require => Package["php5-memcache"], }
