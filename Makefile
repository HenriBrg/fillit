NAME = fillit
SRCS = srcs/main.c \
			 srcs/parser/parser.c srcs/parser/data.c \
			 srcs/utils/list.c srcs/utils/utils.c \
			 srcs/solver/solver.c

OBJS = ${SRCS:.c=.o}
HEADER = -I ./includes/
LIBS = -L. libft.a
FLAGS = -Wall -Wextra -Werror

#ifndef VERBOSE
#.SILENT:
#endif

all: $(NAME)

.c.o:
	gcc $(FLAGS) $(HEADER) -c $< -o $@

$(NAME): $(OBJS)
	gcc $(OBJS) -o $(NAME) $(LIBS)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
