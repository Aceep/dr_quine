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


Colleen: $(OBJ_C)
	@$(CC2) -no-pie $(OBJ_C) -o Colleen

Grace: $(OBJ_G)
	@$(CC2) -no-pie $(OBJ_G) -o Grace

Sully: $(OBJ_S)
	@$(CC2) -no-pie $(OBJ_S) -o Sully

clean:
	@rm -rf $(OBJ_S) $(OBJ_G) $(OBJ_C)

fclean: clean
	@rm -f tmp_*
	@rm -rf Sully Colleen Grace Sully_* Grace_kid.s

re: fclean all

.PHONY: all clean fclean re