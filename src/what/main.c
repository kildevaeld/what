
#include <duktape.h>
#include <stdio.h>
#include <stdlib.h>
#include "what.h"

char *get_file_contents(const char *filename, int *errorno) {
  char *source = NULL;
  FILE *fp = fopen(filename, "r");
  if (fp != NULL) {
    /* Go to the end of the file. */
    if (fseek(fp, 0L, SEEK_END) == 0) {
      /* Get the size of the file. */
      long bufsize = ftell(fp);
      if (bufsize == -1) { /* Error */
        *errorno = 3;
        fclose(fp);
        return NULL;
      }

      /* Allocate our buffer to that size. */
      source = malloc(sizeof(char) * (bufsize + 1));

      /* Go back to the start of the file. */
      if (fseek(fp, 0L, SEEK_SET) != 0) { /* Handle error here */
        *errorno = 1;
        fclose(fp);
        return NULL;
      }

      /* Read the entire file into memory. */
      size_t newLen = fread(source, sizeof(char), bufsize, fp);
      if (newLen == 0) {
        fputs("Error reading file", stderr);
        *errorno = 2;

      } else {
        source[++newLen] = '\0'; /* Just to be safe. */
      }
    }
    fclose(fp);
  }

  return source;
}

/*
static duk_ret_t cb_resolve_module(duk_context *ctx) {
  const char *module_id;
  const char *parent_id;

  module_id = duk_require_string(ctx, 0);
  parent_id = duk_require_string(ctx, 1);

  duk_push_sprintf(ctx, "%s.js", module_id);
  printf("resolve_cb: id:'%s', parent-id:'%s', resolve-to:'%s'\n", module_id,
         parent_id, duk_get_string(ctx, -1));

  return 1;
}

static duk_ret_t cb_load_module(duk_context *ctx) {
  const char *filename;
  const char *module_id;

  module_id = duk_require_string(ctx, 0);
  duk_get_prop_string(ctx, 2, "filename");
  filename = duk_require_string(ctx, -1);

  printf("load_cb: id:'%s', filename:'%s'\n", module_id, filename);

  if (strcmp(module_id, "pig.js") == 0) {
    duk_push_sprintf(ctx,
                     "module.exports = 'you\\'re about to get eaten by %s';",
                     module_id);
  } else if (strcmp(module_id, "cow.js") == 0) {
    duk_push_string(ctx, "module.exports = require('pig');");
  } else if (strcmp(module_id, "ape.js") == 0) {
    duk_push_string(ctx, "module.exports = { module: module, __filename: "
                         "__filename, wasLoaded: module.loaded };");
  } else if (strcmp(module_id, "badger.js") == 0) {
    duk_push_string(ctx, "exports.foo = 123; exports.bar = 234;");
  } else {
    duk_error(ctx, DUK_ERR_TYPE_ERROR, "cannot find module: %s", module_id);
  }

  return 1;
}

void initialize_duktape(duk_context *ctx) {

  // Console
  duk_console_init(ctx, DUK_CONSOLE_PROXY_WRAPPER);

  // Module loading
  duk_push_object(ctx);
  duk_push_c_function(ctx, cb_resolve_module, DUK_VARARGS);
  duk_put_prop_string(ctx, -2, "resolve");
  duk_push_c_function(ctx, cb_load_module, DUK_VARARGS);
  duk_put_prop_string(ctx, -2, "load");
  duk_module_node_init(ctx);
}*/

int main(int argc, char **argv) {

  if (argc < 2) {
    fprintf(stderr, "usage: duk <file>\n");
    return 1;
  }

  const char *filename = argv[1];

  /*duk_context *ctx = duk_create_heap_default();

  initialize_duktape(ctx);
  */

  int err;
  char *text = get_file_contents(filename, &err);

  if (!text) {
    printf("Error %d\n", err);
    return 1;
  }

  what_t *what = what_create(text);
  if (!what) {
    printf("what ?\n");
    return 1;
  }

  const char *out = what_run(what, "bytes", "gigabytes", "3330330303");
  what_free(what);
  printf("out %s\n", out);
  /*what_info *info = what_info_new(ctx, text);
  if (!info) {
    printf("something went wrong\n");
    return 1;
  }

  printf("name %s\n",info->name);
  for (int i = 0; i < info->units_size; i++) {
    printf("  %s\n", info->units[i]);
  }
  if (duk_peval_string(ctx, text)) {
    duk_get_prop_string(ctx, -1, "stack");
    // std::cout << duk_safe_to_string(ctx, -1) << std::endl;
    printf("%s\n", duk_safe_to_string(ctx, -1));
    duk_pop(ctx);
  }

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

  if (!duk_get_global_string(ctx, "transform")) {
    printf("not found\n");
  }

  // char b[100];
  // scanf("%s",b);
  duk_push_string(ctx, "megabytes");
  duk_push_string(ctx, "bytes");
  
  duk_push_int(ctx, 120);
  if (!duk_pcall(ctx, 3)) {
    duk_get_prop_string(ctx, -1, "stack");
    printf("%s\n", duk_safe_to_string(ctx, -1));
    duk_pop(ctx);
  }

  double ret = duk_get_number(ctx, -1);
  printf("result %f\n", ret);
  free(info);
  free(text);
  duk_destroy_heap(ctx);
  */
  return 0;
}