class redmine::dependencies::image{
  package{"ImageMagick":
    ensure => present
  }
  
  package{"ImageMagick-devel":
    ensure => present
  }
}
