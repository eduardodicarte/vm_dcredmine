class redmine::dependencies::apache::install{
    package{"httpd":
      ensure => present
    }
    
    service{"httpd":
      ensure => running,
      enable => true,
      require => Package["httpd"]
    }
}