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
      package { 'pdk-1.2.1.0-1.osx10.12' :
        ensure   => present,
        source   => 'puppet:///modules/install_pdk/pdk-1.2.1.0-1.osx10.12.dmg',
        provider => 'pkgdmg',
      }
    }
    default : {}
  }
}
