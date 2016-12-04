class sshd::config inherits sshd::param {

	file { $conf_file:
		ensure => file,
		content => $sou_file
	}
}
