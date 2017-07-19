class strider::params{


#specifying the initial requesites for strider

     if($::fqdn) {

             $servername = $::fqdn
                }
         else
            {
              $servername = $::hostname

             }

            $source_path = '/usr/src/'
  
            
            $nodejs_install_command = "bash -c 'cd $source_path && curl --silent --location https://rpm.nodesource.com/setup && yum install -y nodejs && yum install -y gcc-c++ make'"

          
          exec {'install node_js':

                 command => $nodejs_install_command,
                 path    => ['/usr/bin', '/usr/sbin',]
                }

           yumrepo {'mongodb':

                   name => 'MongoDB Repository',
                   baseurl => 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/',
                   gpgcheck => 0,
                   enabled => 1,
                   ensure => present,
                    
                    }
                   
     
           $package_name = [git, mongodb-org]

           $node_gyp_install_command = 'npm install -g node-gyp'

  
            $python_source_url = "https://www.python.org/ftp/python/2.7/Python-2.7.tgz"
            
 

           $python_build_command = "bash -c 'cd $temp_dir && wget --quiet $python_source_url && tar zxf Python-2.7.tgz && cd  $source_path && ./configure --prefix=$source_path && make && make altinstall'"




      exec { 'Build Python 2.7 from source':
             command => $python_build_command,
             creates => "$source_path/bin/python2.7",
             }


                                 

                
     exec { 'install_node_gyp':

           command => $node_gyp_install_command,
           require => Exec['Build Python 2.7 from source']
          }













}


