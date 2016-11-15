class httpd::test {

	file { '/tmp/abc':
		ensure => file,
		content => template('httpd/httpd.erb')
	}
}
