#ifndef WHAT_INFO_H
#define WHAT_INFO_H
#include <duktape.h>

#ifdef __cplusplus
extern "C"
{
#endif


typedef struct _what_info {
  const char *name;
  const char *desc;
  const char **units;
  size_t units_size;
  void *udata;
} what_info;

typedef enum _what_info_error {
    WHAT_NO_NAME
} what_info_error;

what_info *what_info_new(duk_context *ctx, const char *input);
void what_info_free(what_info *info);


#ifdef __cplusplus
}
#endif

#endif