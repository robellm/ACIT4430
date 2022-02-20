class glusterfs {

      package { "glusterfs-server":
              ensure => present, }
      
      service { "glusterfs-server":
              ensure => running,
              require => Package["glusterfs-server"], }
}
