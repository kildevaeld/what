

/* These yy_* functions come from markdown_parser.c which is
 * generated from markdown_parser.leg
 * */
typedef int (*yyrule)();

extern int yyparse();
extern int yyparsefrom(yyrule);
//extern int yy_References();
//extern int yy_Notes();
//extern int yy_Doc();
extern int yy_start();

#include "parsing_functions.h"
#include "utility_functions.h"


element *parse(const char *input) {

    charbuf = input;
    
    yyparsefrom(yy_start);

    return parse_result;
}