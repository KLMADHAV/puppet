class test {

	$author = "$::new::author"

	file { '/etc/motd':
		ensure => file,
		content => template('test/motd.erb')
	}

}
