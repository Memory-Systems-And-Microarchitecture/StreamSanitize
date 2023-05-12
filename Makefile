# ssdsim linux support
all:ssd 
new: ssd-test

clean:
	rm -f ssd *.o *~
.PHONY: clean

ssd-test: test.o avlTree.o flash.o initialize.o pagemap.o
	cc -g -o ssd test.o avlTree.o flash.o initialize.o pagemap.o  -std=c99         
test.o: flash.h initialize.h pagemap.h
	gcc -c -g test.c -std=c99
ssd: ssd.o avlTree.o flash.o initialize.o pagemap.o raid.o
	cc -g -o ssd ssd.o avlTree.o flash.o initialize.o pagemap.o raid.o -std=c99
#	rm *.o
ssd.o: flash.h initialize.h pagemap.h raid.h
	gcc -c -g ssd.c -std=c99
flash.o: pagemap.h
	gcc -c -g flash.c -std=c99
initialize.o: avlTree.h pagemap.h
	gcc -c -g initialize.c -std=c99
pagemap.o: initialize.h
	gcc -c -g pagemap.c -std=c99
avlTree.o: 
	gcc -c -g avlTree.c -std=c99
raid.o:
	gcc -c -g raid.c -std=c99

