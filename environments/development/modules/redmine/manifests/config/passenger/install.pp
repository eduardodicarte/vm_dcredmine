class redmine::config::passenger::install{
   package{"passenger":
    ensure => present,
    provider => "gem",
    require => Exec['db_migrate']
  }
  
  exec{"passenger_module":
    command => "passenger-install-apache2-module --auto",
    path => ["/usr/local/bin","/usr/bin"],
    timeout => 0,
    require => Package["passenger"]
  }
}