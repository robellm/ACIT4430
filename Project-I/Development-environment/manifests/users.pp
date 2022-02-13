group { 'developers':
        ensure => present, }

user { 'bob':
      ensure => present,
      groups => ['sudo'],
      home => '/home/bob',
      managehome => true,
      password => 'BobbyB', }

user { 'janet':
      ensure => present,
      groups => ['sudo', 'developers'],
      managehome => true,
      home => '/home/janet',
      password => 'JennyJ', }

user { 'alice':
      ensure => present,
      groups => ['sudo'],
      managehome => true,
      password => 'Alice', }

user { 'tim':
      ensure => present,
      groups => ['sudo', 'developers'],
      managehome => true,
      password => 'TimmyT', }
