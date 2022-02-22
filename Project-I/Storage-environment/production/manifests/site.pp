node default {}

node 'vm-storage-server-1' {
      include storageadmins
      include glusterfs
}
node 'vm-storage-server-2' {
      include storageadmins
      include glusterfs
}
node 'vm-storage-server-3' {
      include storageadmins
      include glusterfs
}
node 'vm-storage-server-4' {
      include storageadmins
      include glusterfs
}

node 'vm-backup-server-1' {
      include storageadmins
      include glusterfs
}
node 'vm-backup-server-2' {
      include storageadmins
      include glusterfs
}

node 'vm-webserver' {
      include webserver
      include janet
}
