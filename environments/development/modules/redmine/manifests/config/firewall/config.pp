class redmine::config::firewall::config{
  exec{'libera_trafego_tcp_input_80':
    command => 'iptables -t filter -p tcp -I INPUT 1 -j ACCEPT -m comment --comment "Liberacao da porta 80"',
    path => ['/usr/sbin/','/usr/bin/'],
    unless => 'iptables -L | grep "Liberacao da porta 80"'
  }
  
  exec{"iptables_save_rules":
    command => "service iptables save",
    path =>  ['/usr/sbin/','/usr/bin/'],
    unless => 'iptables -L | grep "Liberacao da porta 80"',
    require => Exec["libera_trafego_tcp_input_80"],
  }
}