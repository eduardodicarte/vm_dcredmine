class redmine::dependencies::databases{
  include redmine::dependencies::databases::mysql::install
  include redmine::dependencies::databases::mysql::config
}