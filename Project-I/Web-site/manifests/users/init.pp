group { 'web-admins':
        ensure => present, }

user { 'tom':
      ensure => present,
      home => '/home/tom',
      groups => ['sudo', 'web-admins'],
      comment => "This is Tommy's account"
      managehome => true,
      password => 'Tom', }

user { 'janet':
      ensure => present,
      home => '/home/janet',
      groups => ['sudo', 'web-admins'],
      comment => "This is Janet's account"
      managehome => true,
      password => 'JennyJ', }

user { 'brady':
      ensure => present,
      home => '/home/brady',
      groups => ['sudo', 'web-admins'],
      comment => "This is brady"
      managehome => true,
      password => 'Alice', }

      
