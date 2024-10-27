# ft_printf

## Summary

The **ft_printf** project is a reimplementation of the C standard library’s `printf()` function. This project provides valuable experience with variadic functions and structured, extensible C code, which are essential skills for system-level programming.

This project aims to recreate key functionalities of `printf()` while ensuring efficiency and compatibility. It supports a variety of format specifiers to handle different types of data and format output effectively.

## Features

### Supported Format Specifiers

The `ft_printf` function can handle the following format specifiers:

- **%c**: Prints a single character.
- **%s**: Prints a null-terminated string.
- **%p**: Prints a `void *` pointer in hexadecimal format.
- **%d**: Prints a signed decimal integer.
- **%i**: Prints an integer in base 10.
- **%u**: Prints an unsigned decimal integer.
- **%x**: Prints an integer in lowercase hexadecimal format.
- **%X**: Prints an integer in uppercase hexadecimal format.
- **%%**: Prints a literal percent sign (`%`).

## Learning Outcomes

Through this project, you will gain familiarity with:
- **Variadic Functions**: Using functions with a variable number of arguments.
- **Efficient Output Formatting**: Building an output function that supports multiple types.
- **Code Structure**: Designing modular, organized code that handles complex conditions.

## Compilation

I added a main function and already linked it with ft_printf to test it and compare
it with printf().

To compile the `ft_printf` library, use the following command in the terminal:

```bash
make

