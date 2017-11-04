class install_pdk {
  case $facts['osfamily'] {
    'Linux' : {
      package { 'pdk_1.2.1.0-1xenial_amd64' :
        ensure   => present,
        source   => 'puppet://modules/install_pdk/pdk_1.2.1.0-1xenial_amd64.deb',
        provider => 'dpkg',
      }
    }
    'Darwin' : {
      package { 'pdk' :
        ensure   => present,
        provider => 'homebrew',
      }
    }
    default : {}
  }
}
