How to compile
----

	wget http://zlib.net/zlib-1.2.8.tar.gz
	tar xf zlib-1.2.8.tar.gz
	cd zlib-1.2.8
	CC=x86_64-nacl-gcc ./configure --prefix=${ZVM_PREFIX}/x86_64-nacl
	make
	make install

