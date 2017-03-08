#include "parsing_functions.h"
#include "utility_functions.h"

#include <stdio.h>

int main() {

    element *el = parse("1000 bytes in kilobytes");
    if (!el)  {
        printf("error");
        return 1;
    }
    struct Converter *c = el->value.converter;

    printf("%s - %s - %d\n", c->from, c->to, c->value);
    free_element(el);
    return 0;
}