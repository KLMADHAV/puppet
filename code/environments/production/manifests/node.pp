class myclass {
	file { '/opt/data':
		ensure => 'present'
	}
	package { 'httpd':
		name => httpd,
		ensure => installed
	}
	package { 'vsftpd':
		name => vsftpd,
		ensure => installed
	}
}


node 'ip-172-31-58-72.ec2.internal', 'ip-172-31-52-249.ec2.internal' {
#	#include myclass
#	include tomcat
#	include httpd
	include httpd::test
}

node 'ip-172-31-3-247.ec2.internal' {
	include httpd
}

#node 'ip-172-31-52-249.ec2.internal' {
#	include test
#}

node 'default' {
	$packages = ['wget', 'vim', 'httpd', 'bzip2']
	package { $packages:
		ensure => installed
	}
}
