#ifndef CHECKER_H
#define CHECKER_H

#include <stdio.h>
#include <stdlib.h>

int		ft_atoi(const char *str);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	**ft_split(char const *s, char c);
char	*ft_strdup(const char *s1);
size_t	ft_strlen(const	char *s);
char	*ft_substr(char const *s, unsigned int start, size_t len);

#endif
