/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hmaronen <hmaronen@student.hive.fi>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/16 16:11:58 by hmaronen          #+#    #+#             */
/*   Updated: 2021/11/18 17:29:21 by hmaronen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmap(char const *s, char (*f)(char))
{
	int		i;
	char	*str;

	i = 0;
	if (s == NULL)
		return (NULL);
	str = ft_strnew(ft_strlen((char *)s));
	if (str != 0)
	{
		while (s[i] != 0)
		{
			str[i] = f(s[i]);
			i++;
		}
	}
	return (str);
}
