This is a checker that i made for philosopher project(42curses), with this checker you can check the time that every philosopher eat or sleep or think, so you will see if the time is correct in every action or there is some threads(philosophers) that shouldn't take the action in that time.
 
 
./philosopher 60 700 100 100 > time.txt
cat time.txt | awk '{print $1}' | tr '\n' ' ' > time1.txt
