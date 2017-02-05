node 'centosdev.c.demo1-156516.internal' {
	include roles::webdbclient
	include roles::common
	notify { 'Welcoem to development domain': }
}
