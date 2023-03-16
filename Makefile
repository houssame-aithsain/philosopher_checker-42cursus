
make:
	gcc ft_atoi.c ft_memcpy.c ft_split.c ft_strdup.c ft_strlen.c ft_substr.c checker.c -o checker

clean : 
	rm -rf checker philo time.txt time1.txt
