class mongo::server (

            $ensure           = $mongodb::params::ensure,
            $user             = $mongodb::params::user,
            $service_name     = $mongodb::params::service_name,
            $service_enable   = $mongodb::params::service_enable,
            $package_name     = $mongodb::params::server_package_name,
            $password         = $mongodb::params::password,
            $db_name          = $mongodb::params::db_name,
            $roles            = $mongodb::params::roles,
           
) inherits mongo::params {


     package {'$package_name':
     ensure     => present,
     require    => Yumrepo['mongodb'],
      }
 

     mongodb_database { $db_name:
     ensure        => present,
     require       => Pacakge['$package_name'],
     }


    mongodb_user { "User ${user} on db ${db_name}":
    ensure        => present,
    password      => $password,
    username      => $user,
    database      => $db_name,
    roles         => $roles,
    require       => Mongodb_database[$db_name],
     } 




    }



  }

            
