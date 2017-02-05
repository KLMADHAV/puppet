class mariadb::server {

        package { "mariadb-server":
                ensure => 'installed'
        }

}
