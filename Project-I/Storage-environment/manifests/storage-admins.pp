group { 'storage-admins':
        ensure => present, }

user { 'kirk':
      ensure => present,
      home => '/home/kirk',
      groups => ['sudo', 'storage-admins'],
      comment => "This is Kirk's account"
      managehome => true,
      password => 'Kirk', }

user { 'rich':
      ensure => present,
      home => '/home/rich',
      groups => ['sudo', 'storage-admins'],
      comment => "This is Rich's account"
      managehome => true,
      password => 'RICKY', }
      
