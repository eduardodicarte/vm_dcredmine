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
}
