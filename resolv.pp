class core::resolv {
  file { '/etc/resolv.conf':
    owner => 'root',
    group => 'root',
    mode => '0644',
    path => '/etc/resolv.conf',
    content => template('core/resolv.conf.erb')
  }
}
