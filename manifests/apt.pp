## apt.pp ##

# Ubuntu/Debian boxes should have the apt module:
node 'davos.narrowsea.lan' {
  include apt
}
