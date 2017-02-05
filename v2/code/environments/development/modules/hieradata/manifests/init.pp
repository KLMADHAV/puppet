class hieradata {

	$webname = hiera('mywebname')
	notify { "My Web Name = $webname": }

}
