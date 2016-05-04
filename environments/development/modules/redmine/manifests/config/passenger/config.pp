class redmine::config::passenger::config{
   file {'/etc/httpd/conf.d/passenger.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/passenger.conf',
    notify => Service["httpd"],
    require => Exec['passenger_module']
  }
}