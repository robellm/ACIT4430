Alternative 2 - A storage environment

A project belonging to the archiving department request a storage environment in order to store scans of old documents as they transition to a paperless organization. They require:

      - Four storage servers, all running glusterfs server
      - Two backup servers, also running glusterfs for georeplication
      - One webserver who will work as a front-end to the storage. This one has to run apache2 as well as php support.
      - Two users should be set up on the servers with glusterfs (and sudo rights): kirk & rich
            You also need to include a group called «storageadmins» on all storage and backup servers (Kirk and rich should be members of that group.)
            On the webserver, one needs another user: janet
