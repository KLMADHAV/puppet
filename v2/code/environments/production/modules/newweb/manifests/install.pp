class newweb::install inherits newweb::vars { 

	package { "$pack_name":
		ensure => 'installed'
	}

	file { "$conf":
		content => template('newweb/httpd.conf.erb')
	}

	service { "$serv_name":
		ensure => 'running',
		enable => 'true'
	}



}
