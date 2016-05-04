class redmine::dependencies::apache::dependencies{
  package{"libcurl-devel":
    ensure => present
  }
  
  package{"httpd-devel":
    ensure => present
  }
  
  package{"apr-devel":
    ensure => present
  }
  
  package{"apr-util-devel":
    ensure => present
  }
}