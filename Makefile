NAME = libftprintf.a

SRCS = ft_my_fonctions.c ft_printf.c ft_parscheck.c

OBJS = $(SRCS:.c=.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra -I.

.c.o:
	$(CC) $(CFLAGS) -I ./includes -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean re all