class lb {

        package { "pound":
                ensure => present, }
                
        service { "pound":
                ensure => running, }
}
