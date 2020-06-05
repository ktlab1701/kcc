CFLAGS=-std=c11 -g -static

kcc: kcc.c
	$(cc) -o $@ $? $(LDFLAGS)

test: kcc
	./test.sh

clean:
	rm -f kcc *.0 *~ tmp*

.PHONY: test clean