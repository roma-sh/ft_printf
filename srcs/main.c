#include "../ft_printf.h"

int	main(void)
{
	int	a = 99;
	int	b = 22;
	char *c = "Hell";
	char d = 'Q';
	int	e = -1;
	int	f = 0XF7A4;
	int	*g = &a;
	int	x = ft_printf("%% a=%u, b=%d, c=%s, d=%c, e=%x, f=%X, g=%p\n",a,b,c,d,e,f,g);
	int	y = printf("%% a=%u, b=%d, c=%s, d=%c, e=%x, f=%X, g=%p\n",a,b,c,d,e,f, g);

	ft_printf("ft_printf() printed: %d characters\n", x);
	printf("printf() printed: %d characters\n", y);
	return (0);
}
