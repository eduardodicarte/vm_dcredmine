 class redmine::dependencies::general{
	 exec {"install_development_tools":
	   command => 'yum -y groupinstall "Development Tools"',
	   path => '/usr/bin/',
	   timeout => 0,
	   unless => "cd /var/www/html/redmine"
	  }
 }
 