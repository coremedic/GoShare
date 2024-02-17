all: go c

go:
	go build -v -o GoShare.so -buildmode=c-shared goshare.go

c:
	gcc -o main main.c ./GoShare.so
	chmod u+x main

clean:
	rm main GoShare.so GoShare.h