

parser: parser.c utility_functions.c
	gcc -o $@ $^


parser.c: parser.leg
	leg -o $@ $^