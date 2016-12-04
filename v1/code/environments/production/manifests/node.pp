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


node 'ip-172-31-58-72.ec2.internal' {

	include profiles::httpd
#	include base 
#	include httpd	
#	include httpd::config
#	include mariadb
#	include sshd
#	include sshd::config
#	include tomcat
#
}
