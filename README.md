# GoShare
GoShare is a PoC demonstrating a method of protecting your go source code when it needs to be distributed

## PoC
```shell
make
./main
```

## Info
Using Cgo, go code can be built/compiled as a pre-compiled shared C library. Go build will produce 2 files, the compiled shared library and a header file exporting functions from the shared library and Cgo typedefs. To emulate go embed, convert your data you want to embed to a bytes and format it as a C unsigned char array and place it either in its own header file or place it directly in main. From here you can pass a pointer to your data to your go code via the entrypoint. Shared C build mode in go is not new, but go source code protection is not the typical application of it. 
