class sample {

	if $facts['os']['family'] == 'redhat' {
		$myosname = 'redhatos'
	}
	else {
		$myosname = 'otheros'
	} 

	notify { 'some note':
		message => "Family = $myosname"
	}
	file { '/tmp/abc1':
		ensure => 'present'

}
}
node 'puppetcentos7.c.demo1-156516.internal' {
	include newweb
        include sample
       # include webserver
#	include demo
}

node default {
#        include demo
#        include sample
        include webserver
}

