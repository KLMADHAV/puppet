class base::param {
        case $osfamily {
                'RedHat': {
                        $pack_name = [ 'wget', 'vim', 'zip', 'unzip', 'bzip2', ] 
                        }
                'Debian': {
                        $pack_name = [  ] 
                        }
                }
}
