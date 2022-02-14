user { 'john':
      ensure => present,
      home => '/home/john',
      comment => "This is Johnny's account"
      managehome => true,
      password => 'JOHNNY', }

user { 'alice':
      ensure => present,
      home => '/home/alice',
      comment => "This is Alices's account"
      managehome => true,
      password => 'ALCIE', }

user { 'bob':
      ensure => present,
      home => '/home/bob',
      comment => "This is BOBBY from Wonderland"
      managehome => true,
      password => 'BOB', }

user { 'kate':
      ensure => present,
      home => '/home/kate',
      comment => "This is Kates' account"
      managehome => true,
      password => 'KATE', }
      
