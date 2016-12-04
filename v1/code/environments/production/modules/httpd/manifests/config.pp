class httpd::config inherits httpd::param {

	file { $conf_file:
		ensure => file,
		content => $sou_file
	}
}
