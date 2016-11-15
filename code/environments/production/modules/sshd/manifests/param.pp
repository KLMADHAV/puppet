class sshd::param {
	$pack_name = 'openssh-server'
	$serv_name = 'sshd'
	$conf_file = '/etc/ssh/sshd_config'
        case $osfamily {
                'RedHat': {
                        $sou_file = "puppet:///modules/sshd/sshd_config-rhel"
                        }
                'Debian': {
                        $sou_file = "puppet:///modules/sshd/sshd_config-deb" 
                        }
                }
}
