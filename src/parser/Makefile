

parser: parser.c utility_functions.c parsing_functions.c main.c
	gcc -o $@ $^


parser.c: parser.leg
	leg -o $@ $^