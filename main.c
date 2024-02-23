#include <stdint.h>
#include "libgoshare.h"
#include "config.h"

int main() {
    size_t length = sizeof(Config) / sizeof(Config[0]);
    EntryPoint(Config, (int)length);
    return 0;
}