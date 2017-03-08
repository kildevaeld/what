#include "what.h"
#include "duk_console.h"
#include "duk_module.h"

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

static void initialize_duktape(duk_context *ctx) {

  // Console
  duk_console_init(ctx, DUK_CONSOLE_PROXY_WRAPPER /*flags*/);

  // Module loading
  /*duk_push_object(ctx);
  duk_push_c_function(ctx, cb_resolve_module, DUK_VARARGS);
  duk_put_prop_string(ctx, -2, "resolve");
  duk_push_c_function(ctx, cb_load_module, DUK_VARARGS);
  duk_put_prop_string(ctx, -2, "load");
  duk_module_node_init(ctx);*/
}

what_t *what_create(const char *data) {

  duk_context *ctx = duk_create_heap_default();
  initialize_duktape(ctx);
  what_info *info = what_info_new(ctx, data);

  if (!info) return NULL;

  what_t *what = malloc(sizeof(what_t));
  if (!what) {
    free(info);
    return NULL;
  }

  what->_ctx = ctx;
  what->_info = info;

  return what;
}

void what_free(what_t *what) {
    if (!what) return;
    duk_destroy_heap(what->_ctx);
    what_info_free(what->_info);
    free(what);
}

int check(const char *n, const char **h, size_t hs) {
  for (int i = 0; i < hs; i++) {
    if (strcmp(h[i], n) == 0) {
      return 1;
    }
  }
  return 0;
}

const char *what_run(what_t *what, const char *from, const char *to,
                     const char *input) {
  if (!check(from, what->_info->units, what->_info->units_size) ||
      !check(to, what->_info->units, what->_info->units_size)) {
    
    return NULL;
  }

  duk_context *ctx = what->_ctx;
  if (!duk_get_global_string(ctx, "transform")) {
    return NULL;
  }

  duk_push_string(ctx, from);
  duk_push_string(ctx, to);
  duk_push_string(ctx, input);

  if (duk_pcall(ctx, 3)) {
    duk_get_prop_string(ctx, -1, "stack");
    printf("Error %s\n", duk_safe_to_string(ctx, -1));
    duk_pop_n(ctx, 1);
    return NULL;
  }

  const char *str = duk_safe_to_string(ctx, -1);
  duk_pop_n(ctx, 1);

  return str;
    return "";
}
