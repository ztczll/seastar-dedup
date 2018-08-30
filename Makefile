LIBS=$(shell pkg-config --libs $(SEASTAR)/build/release/seastar.pc)
OBJECTS=main.o
seastar-dedup-server:main.o
	/opt/scylladb/bin/g++-7.3 -o seastar-dedup-server  main.o $(LIBS)
main.o:
	/opt/scylladb/bin/g++-7.3 $(LIBS)  -c main.cpp

clean:
	rm main.o seastar-dedup-server
