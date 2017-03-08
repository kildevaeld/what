#ifndef WHAT_H
#define WHAT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "info.h"
#include <duktape.h>

typedef struct _what_t {
  duk_context *_ctx;
  what_info *_info;
} what_t;

what_t *what_create(const char *data);
void what_free(what_t *what);
char *what_run(what_t *what, const char *from, const char *to,
               const char *input);

#ifdef __cplusplus
}
#endif

#endif
