class redmine::config::firewall{
   include redmine::config::firewall::install
   include redmine::config::firewall::config
}