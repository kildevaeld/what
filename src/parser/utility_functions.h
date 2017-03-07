#ifndef WHAT_UTILITY_FUNCTIONS
#define WHAT_UTILITY_FUNCTIONS

#include "element.h"


element *mk_str(char *string);
element *mk_int(int i);
element *mk_converter(element *from, element *to, element *value);

#endif