class glusterfs {

      package { "glusterfs-server":
              ensure => present, }
      
      service { "glusterd":
              ensure => running, }
}
