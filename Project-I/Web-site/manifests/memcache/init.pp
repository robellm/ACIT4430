 package { "php5-memcache":
          ensure => present, } 
 
 service { "php5-memcache":
          ensure => running,
          hasrestart => true,
          require => Package["php5-memcache"], }
