class mongo(
       
         $servicename      = $mongodb::params::service_name,
         $service_enable   = true,
         $logpath          = $mongodb::params::logpath,


)inherits mongo::params {

    class { '::mongo::server':

          package_name    => $packagename,
          
         }

}
