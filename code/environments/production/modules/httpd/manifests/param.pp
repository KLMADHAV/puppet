class httpd::param {
        case $osfamily {
                'RedHat': {
                        $pack_name = 'httpd'
                        $serv_name = 'httpd'
                        $conf_file = '/etc/httpd/conf/httpd.conf'
                        $sou_file = "template('httpd/httpd.erb')"
                        }
                'Debian': {
                        $pack_name = 'apache2'
                        $serv_name = 'apache2'
                        $conf_file = '/etc/apache2/apache2.conf'
                        $sou_file = template('httpd/apache2.erb') 
                        }
                }
}
