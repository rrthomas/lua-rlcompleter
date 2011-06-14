# Makefile for rlcompleter

V=2.0

CFLAGS=-O2 -Wall -I/home/rrt/local/include -fPIC

DYN=rlcompleter_c.so

OBJS=rlcompleter.o

$(DYN): $(OBJS)
	$(CC) -shared -o $(DYN) $(OBJS) -lreadline

clean:
	rm -f $(DYN) $(OBJS)
