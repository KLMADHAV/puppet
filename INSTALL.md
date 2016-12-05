Install PuppetServer:

1) rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

2) yum install puppetserver -y

3) systemctl start puppetserver

Check:
	1) cd /opt/puppetlabs
	   cd /etc/pupptlabs
	
	2) ps -ef |grep puppet

	3) netstat -lntp |grep 8140


Install Puppet agent:

1) rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

2) yum install puppet-agent -y

3) (optional) systemctl start puppet

Update config file like following contents: /etc/puppetlabs/puppet/puppet.conf

[main]
server=ip-172-31-9-125.ec2.internal



From node/agent run the following command:

puppet agent -t

Goto puppet master, Run the following command

puppet cert list

then
puppet cert sign "ip-172-31-54-156.ec2.internal"(This name may change based on your enviornement)


So lets create some configuration for this host, So run the following commands on puppet master.

cd /etc/puppetlabs/code/environments/production/manifests
vim site.pp
	# Start -----------------------------------
class httpd {

  package { 'httpd':
    ensure => latest

  }

  service { 'Start-HTTPD':
        name => 'httpd',
        ensure => 'running'
  }
}

node 'ip-172-31-54-156.ec2.internal' {
        include httpd
}
	# End -----------------------------------

Now verify your PP file using the folliowng command.

puppet parser validate site.pp

Goto agent side and run the following command.

puppet agent -t


