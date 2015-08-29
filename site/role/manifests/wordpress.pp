# == Class: role::wordpress
#
class role::wordpress {
  # resources
  class { 'profile::mysql': }
  
  class { 'profile::apache': }

  class { 'wordpress':
    db_user        => 'wordpress',
    db_password    => 'wordpress',
    create_db      => false,
    create_db_user => false,
  }
}
