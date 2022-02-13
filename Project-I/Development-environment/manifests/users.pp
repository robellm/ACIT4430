group { 'developers':
        ensure => present, }

user { 'bob':
      ensure => present,
      groups => ['sudo'],
      comment => "This is Bobby's account"
      home => '/home/bob',
      managehome => true,
      password => 'BobbyB', }

user { 'janet':
      ensure => present,
      groups => ['sudo', 'developers'],
      comment => "This is Janet's account"
      managehome => true,
      home => '/home/janet',
      password => 'JennyJ', }

user { 'alice':
      ensure => present,
      groups => ['sudo'],
      comment => "This is Alice from Wonderland"
      managehome => true,
      password => 'Alice', }

user { 'tim':
      ensure => present,
      groups => ['sudo', 'developers'],
      comment => "This is Tims' account"
      managehome => true,
      password => 'TimmyT', }
      
