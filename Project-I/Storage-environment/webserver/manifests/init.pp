class webserver {
  
      package { "apache2":
                 ensure => present, }
      
      service { "apache2":
              ensure => running, }
              
      package { "php7.4-fpm":
              ensure => present, }
      
      service { "php7.4-fpm":
              ensure => running, }        
}
