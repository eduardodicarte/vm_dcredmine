class redmine::dependencies::databases::mysql::config{
  exec{"login":
    command => "mysql < mysql_config.sql",
    path => "/usr/bin/",
    cwd => "/tmp/",
    onlyif => 'mysql < use redminedb',
    require => [Service["mariadb"],File["/tmp/mysql_config.sql"]]
  }
  
  file { '/tmp/mysql_config.sql':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/mysql_config.sql',
  }
}