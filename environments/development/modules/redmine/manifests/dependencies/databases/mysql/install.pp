class redmine::dependencies::databases::mysql::install {
  package{"mariadb-server":
    ensure => present
  }  
  
  package{"mariadb-devel":
    ensure => present,
    before => Package["mariadb-server"]
  }
  
  service{"mariadb":
    ensure => 'running',
    enable => true,
    require => Package["mariadb-server"]
  }
  
  exec{"mysql_secure_installation":
    path => '/tmp/',
    timeout => 0,
    require => File['/tmp/mysql_secure_installation']
  }
  
  file { '/tmp/mysql_secure_installation':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/mysql_secure_installation',
    require => Service["mariadb"]
  }
}
