node davos {
  class { 'gitlab' :
    external_url => 'https://gitlab.narrowsea.lan',
    edition      => 'ce',
    nginx        =>  { redirect_http_to_https =>  true, },
  }
}
