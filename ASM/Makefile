SRC_C = Colleen.s
SRC_G = Grace.s
SRC_S = Sully.s

OBJ_C = $(SRC_C:.s=.o)
OBJ_G = $(SRC_G:.s=.o)
OBJ_S = $(SRC_S:.s=.o)

CC = nasm -felf64
CC2= clang

%.o: %.s
	$(CC) $< -o $@
	
all: Colleen

essai : all
	@./test.sh Colleen
	@./test.sh Grace
	@./test.sh Sully

Colleen: $(OBJ_C)
	$(CC2) $(OBJ_C) -o Colleen

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