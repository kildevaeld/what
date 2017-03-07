#include "utility_functions.h"
#include <stdlib.h>

element *mk_element(enum Tokens token) {
  element *e = malloc(sizeof(element));
  if (!e)
    return NULL;
  e->token = token;
  return e;
}

element *mk_str(char *string) {
  element *e = mk_element(STRING);
  if (!e)
    return NULL;
  e->value.str = string;

  return e;
}

element *mk_int(int i) {
  element *e = mk_element(NUMBER);
  if (!e)
    return NULL;
  e->value.num = i;

  return e;
}

element *mk_converter(element *from, element *to, element *value) {
  element *e = mk_element(CONVERTER);
  if (!e)
    return NULL;

  if (from->token != STRING)
    return NULL;
  if (to && to->token != STRING)
    return NULL;

  struct Converter *c = malloc(sizeof(struct Converter));
  if (!c)
    return NULL;

  c->from = from->value.str;
  c->to = to ? to->value.str : NULL;
  c->value = value->value.num;
  e->value.converter = c;

  free(from);
  if (to)
    free(to);
  free(value);

  return e;
}