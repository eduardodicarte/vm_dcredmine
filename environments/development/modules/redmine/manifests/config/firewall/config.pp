class redmine::config::firewall::config{
  exec{"libera_trafego_tcp_input_80":
    command => "iptables -t filter -p tcp -I INPUT 1 -j ACCEPT",
    path => "/usr/sbin/"
  }
  
  exec{"iptables_save_rules":
    command => "service iptables save",
    path => "/usr/sbin/",
    require => Exec["libera_trafego_tcp_input_80"]
  }
}