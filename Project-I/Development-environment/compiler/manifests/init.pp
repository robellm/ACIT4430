class compiler {
        
        package { "gcc":
                ensure => present, }
        
        package { "make":
                ensure => present, }
        
        package { "binutils":
                ensure => present, }
}


# OR 

class compiler {
        
        $compilerPackages = ["gcc", "make", "binutils"]
        
        package { $compilerPackages:
                ensure => present, }
}
