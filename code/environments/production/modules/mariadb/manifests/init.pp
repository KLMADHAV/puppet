class mariadb inherits mariadb::param {

	package { $pack_name:
		ensure => installed
	}

	service { $serv_name:
		ensure => running
	}
}	
