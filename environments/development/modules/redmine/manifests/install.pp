class redmine::install{
  archive { '/var/www/redmmine-3.2.1.tar.gz':
    ensure        => present,
    extract       => true,
    extract_path  => '/var/www/html',
    source        => 'http://www.redmine.org/releases/redmine-3.2.1.tar.gz',
    checksum      => '425aa0c56b66bf48c878798a9f7c6546',
    checksum_type => 'md5',
    cleanup       => false, 
    before        => Exec['rename_redmine']
  }

  exec { 'rename_redmine': 
    command => "mv redmine-3.2.1 redmine",
    path => "/usr/bin/",
    cwd => "/var/www/html",
    unless => "cd redmine"
  }
}