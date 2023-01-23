NAME = libftprintf.a

SRCS = ft_my_fonctions.c ft_printf.c ft_parscheck.c

OBJ = $(SRCS:.c=.o)

#################### COMPILER ####################
CC = gcc
CFLAGS = -Wall -Wextra -Werror

.c.o:	$(H_FILE)
		$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

#################### RULES ####################
all :		$(NAME)

$(NAME):	$(OBJ)
	ar crs $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean:	clean
	rm -rf $(NAME)

re:		fclean all

.PHONY:	all clean fclean re bonus