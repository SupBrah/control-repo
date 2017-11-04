## apt.pp ##

# Ubuntu/Debian boxes should have the apt module:
node $facts['osfamily'] == 'Debian' {
  include apt
}
