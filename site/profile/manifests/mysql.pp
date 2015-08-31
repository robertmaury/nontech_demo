# == Class: profile::mysql
#
class profile::mysql {
  # resources
  include '::mysql::server'

  mysql::db { 'wordpress':
    user     => 'wordpress',
    password => 'puppetlabs',
    host     => 'localhost',
    grant    => ['ALL'],
  }
}
