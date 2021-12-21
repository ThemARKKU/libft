# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hmaronen <hmaronen@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/04 09:49:18 by hmaronen          #+#    #+#              #
#    Updated: 2021/12/21 17:53:25 by hmaronen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Wextra -Werror
SRCS = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c			\
ft_memchr.c ft_memcmp.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c	\
ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c	\
ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c	\
ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_putchar.c			\
ft_putstr.c ft_strlen.c ft_memalloc.c ft_memdel.c ft_strnew.c				\
ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c	\
ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_putendl.c	\
ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c	\
ft_itoa.c ft_strsplit.c ft_print_list.c ft_lstnew.c ft_lstdelone.c			\
ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_lcase.c					\
ft_print_array.c ft_word_count.c ft_digit_counter.c ft_isspace.c			\
ft_lstadd_back.c ft_swap_array.c ft_strndup.c

HEADER = ./includes
O_FILES = $(SRCS:.c=.o)

all: $(NAME)

$(NAME):
	@@gcc $(FLAGS) -I $(HEADER) -c $(SRCS)
	@@ar rc -s $(NAME) $(O_FILES)

clean:
	@@/bin/rm -f $(O_FILES)

fclean: clean
	@@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
