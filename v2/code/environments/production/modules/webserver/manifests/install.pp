class webserver::install {

	if $::osfamily == 'RedHat' {
		$pack_name = 'httpd'
		$serv_name = 'httpd'
	} elsif $::osfamily == 'Debian' {
		$pack_name = 'apache2'
		$serv_name = 'apache2'
	}

	package { "$pack_name": 
		ensure => installed
	}

	service { "$serv_name":
		ensure => running 
	}

}
