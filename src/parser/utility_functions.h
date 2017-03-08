#ifndef WHAT_UTILITY_FUNCTIONS
#define WHAT_UTILITY_FUNCTIONS

#ifdef __cplusplus
extern "C" {
#endif

#include "element.h"

extern const char *charbuf;   /* Buffer of characters to be parsed. */
extern element *parse_result; /* Results of parse. */

element *mk_str(char *string);
element *mk_int(int i);
element *mk_double(double i);

element *mk_converter(element *from, element *to, element *value);

void free_element(element *e);

#ifdef __cplusplus
}
#endif

#endif
