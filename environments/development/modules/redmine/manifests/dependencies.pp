class redmine::dependencies{ 
   include redmine::dependencies::general 
   include redmine::dependencies::ruby
   include redmine::dependencies::image
   include redmine::dependencies::databases
   include redmine::dependencies::apache
}