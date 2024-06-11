#______________________________________________________________________________#
############################### Target Names ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Name
NAME	= ./Colleen
PROJECT_NAME = Colleen

#______________________________________________________________________________#
############################### Compiler #######################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Compiler
CC = clang 

# Compiler Flags
CFLAGS = -Wall -Wextra -Werror

ifeq ($(debug), 1)
	CFLAGS += -g
endif


#______________________________________________________________________________#
############################### Print Variables ################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# Reset
NC = \033[0m

# Colors
YELLOW = \033[0;33m
GREEN = \033[0;32m
BLUE = \033[0;34m
RED = \033[0;31m
PURPLE = \033[0;35m
CYAN = \033[0;36m
BLACK = \033[0;30
WHITE = \033[0;37m

# Colors
BYELLOW = \033[1;33m
BGREEN = \033[1;32m
BBLUE = \033[1;34m
BRED = \033[1;31m
BPURPLE = \033[1;35m
BCYAN = \033[1;36m
BBLACK = \033[1;30m
BWHITE = \033[1;37m

# One Line Output
OL =\e[1A\r\033[K
CLEAR = \033[2K

#______________________________________________________________________________#
############################### Path Sources ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

SRCS_DIR = ./srcs
#Launcher directory
PATH_SRCS_LAUNCH = $(SRCS_DIR)/00_launcher
#Init/exit directory
PATH_SRCS_INIT = $(SRCS_DIR)/00_launcher/01_init
#File error directory
PATH_SRCS_EXIT = $(SRCS_DIR)/00_launcher/02_exit
#Render directory
PATH_SRCS_RENDER = $(SRCS_DIR)/10_render
#Raycasting directory
PATH_SRCS_RAYC = $(SRCS_DIR)/10_render/raycasting
#Add ons directory
PATH_SRCS_ADDONS = $(SRCS_DIR)/10_render/add_ons
#Gameplay directory
PATH_SRCS_GAMEPLAY = $(SRCS_DIR)/20_gameplay
#User input directory
PATH_SRCS_INPUT = $(SRCS_DIR)/20_gameplay/21_user_input
#Move management directory
PATH_SRCS_MOVE = $(SRCS_DIR)/20_gameplay/22_move
#Utils directory
PATH_SRCS_UTILS = $(SRCS_DIR)/99_utils
#______________________________________________________________________________#
############################### Sources ########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

SRCS += Colleen.c

vpath %c 

#______________________________________________________________________________#
############################### Objects ########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

OBJS_DIR = ./objs
OBJS = $(patsubst %.c, $(OBJS_DIR)/%.o, $(SRCS))
CHK_OBJS = $(patsubst %.c, $(OBJS_DIR)/%.o, $(CHK_SRCS))


#______________________________________________________________________________#
############################### Progress Bar ###################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

# PROGRESS BAR
NB_OBJ = ${words ${OBJS}}
COUNTER = 1
PROGRESS = 0
DONE = 100
SPACE = 0
FILL = 0
EMPTY = 0

define PROGRESS_BAR
	$(eval PROGRESS=$(shell echo $$(($(COUNTER) * 100 / $(NB_OBJ)))))
	$(eval DONE=$(shell echo $$(($(PROGRESS) * 30 / 100))))
	$(eval SPACE=$(shell echo $$((30 - $(DONE)))))
	$(eval FILL=$(shell printf "%*s" ${DONE} | sed 's/ /◼/g'))
	$(eval EMPTY=$(shell printf "%*s" ${SPACE} | sed 's/ /◼/g'))
	printf "\r${CLEAR}$(BCYAN)Compile : $(GREEN)${FILL}$(RED)${EMPTY} $(BWHITE)%3d%%$(END) $(CYAN)%s.c " ${PROGRESS} $1
	$(eval COUNTER=$(shell echo $$(($(COUNTER) + 1))))
endef

#______________________________________________________________________________#
############################### Rules ##########################################
#‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾#

#_____Build_____#
all: $(NAME)
	@echo "--▶ $(BGREEN)all\t$(GREEN)done$(NC)"
	@echo "--------------------------------------------------"

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $^ -o $@
    #-----Output-----#
	@echo "$(WHITE)\n▶$(BGREEN)$(NAME)\t$(GREEN)Executable created$(NC)"

$(OBJS): $(OBJS_DIR)/%.o: %.c | dir where
	@$(CC) $(CFLAGS) -c $< -o $@
    #-----Output-----#
	@$(call PROGRESS_BAR, $(basename $(notdir $<)))

# Directories
dir: $(OBJS_DIR)

$(OBJS_DIR):
	@mkdir $@

test : all
	@./$(NAME) > tmp
	@diff tmp Colleen.c

#_____Clean_____#
clean: where_c
	@rm -rf $(OBJS_DIR)
    #-----Output-----#
	@echo "▶ $(BYELLOW)clean $(YELLOW)Object files removed from $(PROJECT_NAME)$(NC)"
	@echo "--▶ $(BYELLOW)clean$(YELLOW) done$(NC)"

fclean: clean
	@rm -f $(NAME)
    #-----Output-----#
	@echo "\t$(RED)$(NAME) removed$(NC)"
	@echo "--▶ $(BRED)fclean$(RED) done$(NC)"

# Current Make
where_c:
	@echo "$(BBLACK)>$(PROJECT_NAME)$(NC)"

where:
	@echo "$(BBLACK)>$(PROJECT_NAME)$(NC)"

re: fclean all

.PHONY: all clean fclean re