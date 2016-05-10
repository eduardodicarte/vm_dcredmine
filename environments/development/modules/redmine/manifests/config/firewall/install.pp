class redmine::config::firewall::install{
  package{"firewalld":
    ensure => absent,
    before => Package["iptables-services"]
  }
  
  package{"iptables-services":
    ensure => present
  }
  
  service{"iptables":
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
    require => Package["iptables-services"]
  }
}