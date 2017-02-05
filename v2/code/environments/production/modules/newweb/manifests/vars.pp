class newweb::vars {
	
if $::osfamily == "RedHat" {

	$pack_name = "httpd"
	$serv_name = "httpd"
	$webuser = "apache"
	$webgroup = "apache"
	$webport = "80"
	$conf = "/etc/httpd/conf/httpd.conf"
}

}
