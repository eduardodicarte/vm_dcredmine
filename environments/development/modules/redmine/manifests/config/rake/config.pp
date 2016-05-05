class redmine::config::rake::config{
  exec{"gen_token":
    command => "rake generate_secret_token",
    path => "/usr/bin",
    cwd => "/var/www/html/redmine",
    environment => ['HOME=/root'],
    unless => "mysql < db_migrate_test.sql",
    require => File["/var/www/html/redmine/db_migrate_test.sql"]
  }
  
  exec{"db_migrate":
    command => "rake db:migrate RAILS_ENV=production",
    path => "/usr/bin",
    cwd => "/var/www/html/redmine",
    environment => ['HOME=/root'],
    unless => "mysql < db_migrate_test.sql",
    require => [Exec["gen_token"],File["/var/www/html/redmine/db_migrate_test.sql"]]
  }
  
  file { '/var/www/html/redmine/db_migrate_test.sql':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/db_migrate_test.sql',
  }
}