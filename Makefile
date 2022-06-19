# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hogkim <hogkim@student.42seoul.kr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/19 20:24:55 by hogkim            #+#    #+#              #
#    Updated: 2022/06/19 20:27:19 by hogkim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= so_long

SRCS		= 
OBJS		= $(SRCS:.c=.o)

CC			= cc
CFLAGS		= -Wall -Wextra -Werror -g

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

all : $(NAME)

clean :
	rm -rf $(OBJS) 
	make -C libft clean

fclean :
	rm -rf $(OBJS) $(NAME)
	make -C libft fclean

re :
	make fclean
	make all

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

.PHONY : all clean fclean reS$