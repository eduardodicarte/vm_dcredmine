class redmine::config::rake::dependencies {
    package{"rubygems":
      ensure => latest,
  } 
  
   file { '/var/www/html/redmine/Gemfile':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0777',
    source => 'puppet:///modules/redmine/Gemfile',
    require => Package["rubygems"]
  }
  
  package { "rails":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "jquery-rails":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "coderay":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "builder":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "request_store":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "mime-types":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "protected_attributes":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "actionpack-action_caching":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "actionpack-xml_parser":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "roadie-rails":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "nokogiri":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "rails-html-sanitizer":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "tzinfo-data":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "rbpdf":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "openid":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "ruby-openid":
    ensure   => present,
    provider => "gem",
    require  => Package["openid"]
  }

  package { "rack-openid":
    ensure   => present,
    provider => "gem",
    require  => Package["openid"]
  }

  package { "rmagick":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "redcarpet":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "jruby-openssl":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "activerecord-jdbc-adapter":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "mysql2":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "mysql":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "activerecord-jdbcmysql-adapter":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "rdoc":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "yard":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "minitest":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "rails-dom-testing":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "mocha":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "simplecov":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "capybara":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }

  package { "selenium-webdriver":
    ensure   => present,
    provider => "gem",
    require => Package["rubygems"]
  }
  
  package{"net-ldap":
    ensure => present,
    provider => "gem",
    require => Package["rubygems"]
  }
}