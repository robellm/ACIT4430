class webserver {
  
      package { "apache2":
                 ensure => present, }
      
      service { "apache2":
              ensure => running,
              require => Package["apache2"], }
              
      package { "php":
              ensure => present, }
      
      service { "php":
              ensure => running,
              require => Package["php"], }
}        
}
