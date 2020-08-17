
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/nginx-1.16/sbin/nginx -t

	kill -USR2 `cat /home/nginx-1.16/logs/nginx.pid`
	sleep 1
	test -f /home/nginx-1.16/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/nginx-1.16/logs/nginx.pid.oldbin`
