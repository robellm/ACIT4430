class compiler {
        
        package { "gcc":
                ensure => present, }
        
        package { "make":
                ensure => present, }
        
        package { "binutils":
                ensure => present, }
}
