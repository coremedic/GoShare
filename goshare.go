package main

/*
#include <stdlib.h>
*/

import "C"
import (
	"fmt"
	"unsafe"
)

// EntryPoint to be called from C
//
//export EntryPoint
func EntryPoint(config *C.uchar, length C.int) {
	configSlice := C.GoBytes(unsafe.Pointer(config), length)
	fmt.Println(string(configSlice))
}

// main is required for go build
func main() {}
