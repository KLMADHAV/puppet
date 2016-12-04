class sshd inherits sshd::param {
	

	package { $pack_name:
		ensure => installed
	}

	service { $serv_name:
		ensure => running,
		enable => true,
	}

	Package[$pack_name] -> Service[$serv_name]
}
