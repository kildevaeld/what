#include "info.h"

what_info *what_info_new(duk_context *ctx, const char *input) {
  if (duk_peval_string(ctx, input)) {
    duk_get_prop_string(ctx, -1, "stack");
    // std::cout << duk_safe_to_string(ctx, -1) << std::endl;
    printf("%s\n", duk_safe_to_string(ctx, -1));
    duk_pop(ctx);
  }

  if (!duk_get_global_string(ctx, "transform")) {
    printf("not found\n");
  }
  duk_pop(ctx);

  if (!duk_get_global_string(ctx, "name")) {
      printf("name not found");
      return NULL;
  }
  
  const char *name = duk_safe_to_string(ctx, -1);
  duk_pop(ctx);


  if (!duk_get_global_string(ctx, "units") || !duk_is_array(ctx, -1)) {
    printf("no units");
  }

  duk_get_prop_string(ctx, -1, "length");
  int len = duk_to_int(ctx, -1);
  duk_pop(ctx);

  const char *units[len];
  for (int i = 0; i < len; i++) {
    duk_get_prop_index(ctx, -1, i);
    units[i] = duk_safe_to_string(ctx, -1);
    duk_pop(ctx);
  }
  
  duk_pop(ctx);

  what_info *info = malloc(sizeof(what_info));
  if (!info) {
      return NULL;
  }

  info->name = strdup(name);
  info->desc = NULL;
  info->units = malloc((sizeof(units)));
  if (!info->units) {
      return NULL;
  }
  
  memcpy(info->units, units, sizeof(units));
  info->units_size = len;

  return info;

  
}

void what_info_free(what_info *info) {
    if (!info) return;

    if (info->name) free((void*)info->name);
    if (info->desc) free((void*)info->desc);
    if (info->units) free((void*)info->units);
    free(info);
}   