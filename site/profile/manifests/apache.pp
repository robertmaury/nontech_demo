class profile::apache {

  class { 'apache': 
    mpm_module    => 'prefork',
    default_vhost => false,
  }
  
  class { '::apache::mod::php': }

  apache::vhost { "ubuntu1404a":
    port     => 80,
    docroot  => '/opt/wordpress',
    priority => '25',
  }
  
}
