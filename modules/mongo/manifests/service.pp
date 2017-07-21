class mongo::service {$mongo_db_service = $mongo::params::mongo_db_service,

              service{'mongodb':

                     name => $mongo_db_service,
                     enable => true,
                     ensure => running,
                     require => Package['mongo_db'],
                      }

}
