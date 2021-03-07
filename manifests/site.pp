node 'vm-storage-server1' {
        include glusterfs
}
node 'vm-storage-server2' {
        include glusterfs
}
node 'vm-developer-server1' {
        include developers
}
node 'vm-developer-server2' {
        include developers
}
node 'vm-compiler-server1' {
        include compile
}
node 'vm-compiler-server2' {
        include compile
}
node 'default' {
        include default
}
