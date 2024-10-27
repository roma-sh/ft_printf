# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rshatra <rshatra@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/02 11:00:53 by rshatra           #+#    #+#              #
#    Updated: 2024/10/27 04:43:51 by rshatra          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFTDIR = ./libft
LIBFTNAME = libft.a
CFLAGS = -Wall -Werror -Wextra
CC = cc
SRC_DIR = ./srcs/
MAIN = $(SRC_DIR)main.c
OUT = out

# Source files and object files
SRCS = $(SRC_DIR)ft_printf.c $(SRC_DIR)sub_libft.c \
		$(SRC_DIR)format_print.c $(SRC_DIR)sub_libft2.c
OBJ = $(SRCS:.c=.o)

# Target for building both the library and executable
all: $(NAME) $(OUT)

# Build the libft library
makelibft:
		@make -C $(LIBFTDIR)
		@cp $(LIBFTDIR)/$(LIBFTNAME) .
		@mv $(LIBFTNAME) $(NAME)

# Build the library
$(NAME): makelibft $(OBJ)
		@ar -r $(NAME) $(OBJ)
		@ranlib $(NAME)

# Link the library with main.c to create the executable out.a
$(OUT): $(NAME) $(MAIN)
		@if [ -f $(MAIN) ]; then \
			$(CC) $(CFLAGS) -o $(OUT) $(MAIN) $(NAME); \
		elif [ -f $(SRC_DIR)$(MAIN) ]; then \
			$(CC) $(CFLAGS) -o $(OUT) $(SRC_DIR)$(MAIN) $(NAME); \
		else \
			echo "Error: main.c not found."; \
			exit 1; \
		fi

clean:
	@rm -f $(OBJ)
	@cd $(LIBFTDIR) && make clean

fclean: clean
	@rm -f $(NAME) $(OUT)
	@cd $(LIBFTDIR) && make fclean

re: fclean all
