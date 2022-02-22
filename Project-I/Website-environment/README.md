Alternative 3 - A web site

The development project is about to deploy their first version of a web solution they have been working on. They now request a set of servers to build the site on:

      - One server who is to be the loadbalancer. This one should run pound.
      - Two database servers running the mysql server
      - Two webservers, with apache2, php5 and php-mysql libraries
      - One webserver with node.js installed
      - One machine running the memcached service
      - The users tom, brady and janet should be on all servers. They need sudo rights and to be member of the new group «webadmins».
They can configure their database themselves, but require you to enable bin-log on both.
