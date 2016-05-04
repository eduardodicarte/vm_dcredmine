class redmine::config::rake::config{
  exec{"gen_token":
    command => "rake generate_secret_token",
    path => "/usr/bin",
    cwd => "/var/www/html/redmine",
    environment => ['HOME=/root']
  }
  
  exec{"db_migrate":
    command => "rake db:migrate RAILS_ENV=production",
    path => "/usr/bin",
    cwd => "/var/www/html/redmine",
    environment => ['HOME=/root'],
    require => Exec["gen_token"]
  }
}