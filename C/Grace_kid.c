#include <stdio.h>

#define FILENAME "Grace_kid.c"
#define CONTENT "#include <stdio.h>%c%c#define FILENAME %c%s%c%c#define CONTENT %c%s%c%c#define WRITE_TO_FILE() int main() { FILE *file = fopen(FILENAME, %cw%c); fprintf(file, CONTENT, 10, 10, 34, FILENAME, 34, 10, 34, CONTENT, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10); fclose(file);}%c%cWRITE_TO_FILE()%c%c/*%c    Here is the code%c*/"
#define WRITE_TO_FILE() int main() { FILE *file = fopen(FILENAME, "w"); fprintf(file, CONTENT, 10, 10, 34, FILENAME, 34, 10, 34, CONTENT, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10); fclose(file);}

WRITE_TO_FILE()

/*
    Here is the code
*/