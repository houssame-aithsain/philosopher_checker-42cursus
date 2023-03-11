# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    checker.sh                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hait-hsa <hait-hsa@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/11 23:30:29 by hait-hsa          #+#    #+#              #
#    Updated: 2023/03/11 23:30:30 by hait-hsa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

handle_sigint() {
	kill -9 $(ps | grep ./philosopher | awk 'NR==1 {print $1}') >/dev/null 2>&1
}
make
touch time.txt time1.txt
cd ..;make;cd philosopher_checker-42cursus;
cp ../philosopher ./
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
echo "Press CTRL+C to stop your program execution and start testing."
./philosopher  $number_of_philosophers $time_to_die $time_to_eat $time_to_sleep > time.txt
cat time.txt | awk '{print $1}' | tr '\n' ' ' > time1.txt
./checker "$(cat time1.txt)"