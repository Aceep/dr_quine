#include <stdio.h>
#include <stdlib.h>

#define FILENAME "Sully_%d.c"
#define CONTENT "#include <stdio.h>%c#include <stdlib.h>%c%c#define FILENAME %c%s%c%c#define CONTENT %c%s%c%c%cint main() {%c    int i = %d;%c    if (i <= 0) return (0);%c    char filename[100];%c    sprintf(filename, FILENAME, --i);%c    FILE *file = fopen(filename, %cw%c);%c    fprintf(file, CONTENT, 10, 10, 10, 34, FILENAME, 34, 10, 34, CONTENT, 34, 10, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10);%c    fclose(file);%c    char command[100];%c    sprintf(command, %cgcc Sully_%%d.c -o Sully_%%d%c, i, i);%c    system(command);%c    sprintf(command, %c./Sully_%%d%c, i);%c    system(command);%c}"

int main() {
    int i = 5;
    if (i <= 0) return (0);
    char filename[100];
    sprintf(filename, FILENAME, --i);
    FILE *file = fopen(filename, "w");
    fprintf(file, CONTENT, 10, 10, 10, 34, FILENAME, 34, 10, 34, CONTENT, 34, 10, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10);
    fclose(file);
    char command[100];
    sprintf(command, "gcc Sully_%d.c -o Sully_%d", i, i);
    system(command);
    sprintf(command, "./Sully_%d", i);
    system(command);
}