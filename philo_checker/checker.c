/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   my_checker.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hait-hsa <hait-hsa@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/11 17:00:12 by hait-hsa          #+#    #+#             */
/*   Updated: 2023/03/11 23:10:17 by hait-hsa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "checker.h"

int	if_valid(char c)
{
	if (c == ' ' || c == '-' || c == '+' || (c >= '0' && c <= '9'))
		return (1);
	return (0);
}

int	if_digit(char c)
{
	if (c >= 48 && c <= 57)
		return (1);
	return (0);
}

int	size_counter(char *arr)
{
	int	i;
	int	lent;

	lent = 0;
	i = 0;
	while (arr[i])
	{
		if (!if_valid(arr[i]))
			return (0);
		if (if_digit(arr[i]) && !if_digit(arr[i + 1]))
			lent++;
		i++;
	}
	return (lent);
}

long long	*ft_string_to_digits(char **arr, int lent)
{
	long long	*numb;
	int			i;

	i = 0;
	numb = malloc(sizeof(long long) * lent);
	if (!numb)
		return (0);
	while (arr[i] && i < lent)
	{
		numb[i] = ft_atoi(arr[i]);
		i++;
	}
	return (numb);
}

int	if_sorted(long long *numbs, int lent)
{
	long long	j;
	long long	i;
	long long	check;

	check = 0;
	j = 0;
	i = numbs[j];
	while (j < lent - 2)
	{
		j++;
		if (i <= numbs[j])
			i = numbs[j];
		else
			{
				printf("\033[0;31m[%lld]===>[%lld]\n", i , numbs[j]);
				i = numbs[j];
				check++;
			}
	}
	if(check)
		return (1);
	return (0);
}

int main(int argc, char **argv)
{
	char		**splt;
	long long	*numbs;
	int			lent;

	if (argc == 2)
	{
		lent = size_counter(argv[1]);
		splt = ft_split(argv[1], ' ');
		numbs = ft_string_to_digits(splt, lent);
		if(!if_sorted(numbs, lent) && lent)
			printf("\033[0;32m>>>>>>>>>> SUCCEED <<<<<<<<<<");
		else
			printf("\033[0;31m>>>>>>>>>> FAILURE <<<<<<<<<<");
	}
	return 0;
}