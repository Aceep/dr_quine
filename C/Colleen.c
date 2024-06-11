#include <stdio.h>

//Here it's the first comment

void    print(char *program) {
    printf(program, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, program, 34, 10, 10, 10, 10, 10);
}

int main() {
    char *program = "#include <stdio.h>%c%c//Here it's the first comment%c%cvoid    print(char *program) {%c    printf(program, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, program, 34, 10, 10, 10, 10, 10);%c}%c%cint main() {%c    char *program = %c%s%c;%c    print(program);%c    //Here it's the second comment%c    return 0;%c}%c";
    print(program);
    //Here it's the second comment
    return 0;
}
