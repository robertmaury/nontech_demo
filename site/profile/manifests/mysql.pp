# == Class: profile::mysql
#
class profile::mysql {
  # resources
  include '::mysql::server'

  mysql::db { 'wordpress':
    user     => 'wordpress',
    password => 'wordpress',
    host     => 'localhost',
    grant    => ['SELECT', 'UPDATE'],
  }
}
