# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    checker.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hait-hsa <hait-hsa@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/11 23:30:29 by hait-hsa          #+#    #+#              #
#    Updated: 2023/03/12 00:58:28 by hait-hsa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

handle_sigint() {
	kill -9 $(ps | grep ./philo | awk 'NR==1 {print $1}') >/dev/null 2>&1
	echo "
	Wait..."
}
make
touch time.txt time1.txt
cd ..;make re;cd philosopher_checker-42cursus;
cp ../philo ./
clear
echo "number_of_philosophers"
read -r number_of_philosophers
echo "time_to_die"
read -r time_to_die
echo "time_to_eat"
read -r time_to_eat
echo "time_to_sleep"
read -r time_to_sleep
trap handle_sigint SIGINT
echo "Your program is now running...."
echo "No philosopher has died yet ?"
echo "Please wait for 0 < 5-seconds < 6 before pressing CTRL+C to stop the program and begin testing."
./philo  $number_of_philosophers $time_to_die $time_to_eat $time_to_sleep > time.txt
cat time.txt | awk '{print $1}' | tr '\n' ' ' > time1.txt
./checker "$(cat time1.txt)"
echo "
You can check the output in [time.txt] file."
