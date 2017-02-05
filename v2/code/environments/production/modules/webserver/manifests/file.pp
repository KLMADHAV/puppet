define webserver::file (String $myfile)  {

	file { "/tmp/sample/$myfile":
		source => "puppet:///modules/webserver/$myfile",
		#target => "/tmp/sample",
		owner  => "admin",
		ensure => 'present'
	}
	notify { "Printing $myfile":
		message => "File to be copied is $myfile"
	}

}
