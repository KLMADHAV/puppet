class motd {

	file { '/etc/motd':
		ensure => 'present',
		source => "puppet:///modules/motd/motd"
	}

}
