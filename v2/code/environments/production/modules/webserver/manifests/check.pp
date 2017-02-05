class webserver::check inherits webserver::vars {

	notify { 'Print package name':
		message => "Package Name = $pack_name"
	} 

}
