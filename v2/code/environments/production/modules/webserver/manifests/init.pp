class webserver {
	$portno = 80
	$myname = "Installing Web Server"
	notify { "$myname": }
	#include webserver::install
	include webserver::check

	webserver::file { "default":
		myfile => 'passwd'
	}

	webserver::file { "default1":
                myfile => 'shadow'
        }

	file { '/etc/httpd/conf/httpd.conf':
		ensure => file,
		content => template('webserver/httpd.conf.erb'),
	}

}
