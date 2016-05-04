class redmine::dependencies::ruby{
    
    package{"ruby":
      ensure => present;
    }
    
    package{"ruby-devel": 
      ensure => present
    }
    
    package{"rubygem-rake":
      ensure => present
    }
    
    package{"rubygem-bundler":
      ensure => present
    }
}