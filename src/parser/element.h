#ifndef WHAT_PARSER_H
#define WHAT_PARSER_H

struct Converter {
  char *from;
  char *to;
  int value;
};

enum Tokens {
  UNIT,
  NUMBER,
  STRING,
  CONVERTER
};

union Contents {
  char *str;
  int num;
  struct Converter *converter;
};

struct Element {
  enum Tokens token;
  union Contents value;
};

typedef struct Element element;

#endif