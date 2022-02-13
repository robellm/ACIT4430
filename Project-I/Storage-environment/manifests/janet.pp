user { 'janet':
      ensure => present,
      home => '/home/janet',
      comment => "This is Janet's account"
      managehome => true,
      password => 'Janet', }
