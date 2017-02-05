define demo::sample (Integer $port) {
#define demo::sample (Integer $port, String $docroot, String $servername, String $vhost_name) {

notify { "Given Values":
	message => "Port = $port" ##DocRoot = $docroot ServerName = $servername Hostname = $vhost_name"
}


}
