/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rshatra <rshatra@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/28 04:39:20 by rshatra           #+#    #+#             */
/*   Updated: 2024/10/27 03:29:17 by rshatra          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../ft_printf.h"

int	ft_printf(const char *s, ...)
{
	int			s_len;
	int			i;
	va_list		args;
	t_er		checker;

	i = -1;
	s_len = 0;
	va_start(args, s);
	while (s[++i] != '\0')
	{
		if (s[i] != '%')
			s_len += ft_modi_putchar(s[i], &checker);
		else
		{
			if (ft_strchr("cspdiuxX%", s[i + 1]))
			{
				s_len += format_print(s[i++ + 1], args, &checker);
			}
			else
				return (-1);
		}
	}
	if (checker.error == 'T')
		return (va_end(args), -1);
	return (s_len);
}
