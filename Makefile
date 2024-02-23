all: go c

go:
	go build -v -o libgoshare.a -buildmode=c-archive goshare.go

c:
	gcc -o main main.c libgoshare.a -lpthread -lm
	chmod u+x main

clean:
	rm -f main libgoshare.a libgoshare.h
