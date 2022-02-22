class vnc {

      package { "tightvncserver":
            ensure => present, }
            
      service { "vncserver":
            ensure => running, }
}
