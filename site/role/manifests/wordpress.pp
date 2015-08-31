# == Class: role::wordpress
#
class role::wordpress {
  # resources
  class { 'profile::mysql': }
  
  class { 'profile::apache': }

  package { 'php5-mysql': }

  class { 'wordpress':
    db_user        => 'wordpress',
    db_password    => 'puppetlabs',
    create_db      => false,
    create_db_user => false,
  }
}
