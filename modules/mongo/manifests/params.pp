class mongo::params{

              $mongo_db_service = 'mongod'
       
              $package_name    = 'mongodb-org'
 
              yumrepo {'mongodb':
               
                       name     => 'MongoDB Repository',
                       baseurl  => 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/',
                       gpgcheck => 1,
                       enabled  => 1,
                       gpgkey   => 'https://www.mongodb.org/static/pgp/server-3.4.asc',
                       ensure   => present,
                     }

                  

 
   




}
