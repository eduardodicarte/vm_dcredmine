class redmine::config::iptables{
   exec{'iptables_clear':
    command => "iptables -F",
    path => "/usr/sbin", 
    require => File["/etc/httpd/conf.d/passenger.conf"]
  }
  
  file {'/etc/rc.d/rc.local':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0770',
    source => 'puppet:///modules/redmine/rc.local'
  }
}