class hierademo ( $domain_name = 'test' ) {

	$omainname = hiera('domain_name')
	notify { "The domain name value is : ${omainname}" : }

}
