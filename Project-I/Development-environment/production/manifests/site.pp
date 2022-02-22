node default {}

node 'vm-storage-server-1' {
      include storage
      include users 
}

node 'vm-storage-server-2' {
      include storage
      include users 
}

node 'vm-developer-server-1' {
      include developer
      include users 
}

node 'vm-developer-server-2' {
      include developer
      include users 
}

node 'vm-compiler-server-1' {
      include compiler
      include users 
}

node 'vm-compiler-server-2' {
      include compiler
      include users 
}
