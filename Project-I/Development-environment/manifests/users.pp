group { 'developers':
        ensure => present, }

user { 'bob':
      ensure => present,
      home => '/home/bob',
      groups => ['sudo'],
      comment => "This is Bobby's account"
      managehome => true,
      password => 'BobbyB', }

user { 'janet':
      ensure => present,
      home => '/home/janet',
      groups => ['sudo', 'developers'],
      comment => "This is Janet's account"
      managehome => true,
      password => 'JennyJ', }

user { 'alice':
      ensure => present,
      home => '/home/alice',
      groups => ['sudo'],
      comment => "This is Alice from Wonderland"
      managehome => true,
      password => 'Alice', }

user { 'tim':
      ensure => present,
      home => '/home/tim',
      groups => ['sudo', 'developers'],
      comment => "This is Tims' account"
      managehome => true,
      password => 'TimmyT', }
      
