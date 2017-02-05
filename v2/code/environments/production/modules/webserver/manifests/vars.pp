class webserver::vars {

        if $::osfamily == 'RedHat' {
                $pack_name = 'httpd'
                $serv_name = 'httpd'
        } elsif $::osfamily == 'Debian' {
                $pack_name = 'apache2'
                $serv_name = 'apache2'
        }
}
