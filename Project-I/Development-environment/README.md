Alternative 1 - A development environment

A development project is about to start programming. They ask you to deploy a development environment for them. They have the following requirements:

      - Two storage servers with the GlusterFS server installed
      - Two servers the developers will use to write code on. They have to have emacs, jed and subversion installed as well as git.
      - All machines have to have four users with preferred usernames: bob - janet - alice - tim (All four (corrected) users should get root access via sudo)
            - Tim and janet have to be members of the group «developers». That group has to be created also.
      - Two compile servers with gcc, make and binutils installed
      
You don’t have to configure the GlusterFS service, the project will do that themselves. Just install the packages
