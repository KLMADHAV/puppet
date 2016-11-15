class httpd {
	case $osfamily {
		'RedHat': {
			$pack_name = 'httpd'
			$serv_name = 'httpd'
			$conf_file = '/etc/httpd/conf/httpd.conf'
			$sou_file = 'puppet:///modules/httpd/httpd.conf'
			}
		'Debian': {
			$pack_name = 'apache2'
			$serv_name = 'apache2'
			$conf_file = '/etc/apache2/apache2.conf'
			$sou_file = 'puppet:///modules/httpd/apache2.conf'
			}
		'default': {
			Warning('This module is not supported in this OS')
			}
		}

	exec { 'http_stop': 
		command => '/bin/systemctl stop httpd'
	}
	package { $pack_name:
		ensure => installed
	}

	service { $serv_name:
		ensure => running,
		enable => true,
	}

	file { $conf_file:
      		ensure => file,
		source => $sou_file,
	}

	Exec['http_stop'] -> Package[$pack_name] -> File[$conf_file] -> Service[$serv_name]
}
