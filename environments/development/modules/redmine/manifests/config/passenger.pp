class redmine::config::passenger{
  include redmine::config::passenger::install
  include redmine::config::passenger::config 
}