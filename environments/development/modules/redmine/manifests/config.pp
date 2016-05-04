class redmine::config{
   file { '/var/www/html/redmine/config/database.yml':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/database.yml',
  }
  
  include redmine::config::rake
  include redmine::config::passenger
}