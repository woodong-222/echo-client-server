.PHONY : echo-client echo-server uc us clean install uninstall

all: echo-client echo-server

echo-client:
	cd echo-client; make; cd ..

echo-server:
	cd echo-server; make; cd ..

uc:
	cd uc; make; cd ..

us:
	cd us; make; cd ..

clean:
	cd echo-client; make clean; cd ..
	cd echo-server; make clean; cd ..

install:
	sudo cp bin/echo-client /usr/local/sbin
	sudo cp bin/echo-server /usr/local/sbin

uninstall:
	sudo rm /usr/local/sbin/echo-client /usr/local/sbin/echo-server
