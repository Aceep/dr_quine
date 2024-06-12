SRC_C = Colleen.c
SRC_G = Grace.c
SRC_S = Sully.c

OBJ_C = $(SRC_C:.c=.o)
OBJ_G = $(SRC_G:.c=.o)
OBJ_S = $(SRC_S:.c=.o)

CFLAGS= -Wall -Werror -Wextra

all: Colleen Grace Sully

essai : all
	@./test.sh Colleen
	@./test.sh Grace
	@./test.sh Sully

Colleen: $(OBJ_C)
	@clang $(CFLAGS) $(OBJ_C) -o Colleen

Grace: $(OBJ_G)
	@clang $(CFLAGS) $(OBJ_G) -o Grace

Sully: $(OBJ_S)
	@clang $(CFLAGS) $(OBJ_S) -o Sully

clean:
	@rm -rf $(OBJ_S) $(OBJ_G) $(OBJ_C)

fclean: clean
	@rm -f tmp_*
	@rm -rf Sully Colleen Grace Sully_* Grace_kid.c

re: fclean all

.PHONY: all clean fclean re