#ifndef WHAT_COMMON_H
#define WHAT_COMMON_H

#define debug_print(fmt, ...) \
            do { if (DEBUG) fprintf(stderr, fmt, __VA_ARGS__); } while (0)

#endif