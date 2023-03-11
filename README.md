This is a checker that i made for philosopher project(42curses), with this checker you can check the time that every philosopher eat or sleep or think, so you will see if the time is correct in every action or there is some threads(philosophers) that shouldn't take the action in that time.
 
 HOW THE CHECKER WORKS:
 It takes the time of every action that every thread made and compares it whit the next action so here he can see if there is an error or not.
 
 HOW TO RUN THE CHECKER:
You need to compile the files:
   $> make
Put the output from your philosopher.out inside a file called time.txt:
   $> ./philosopher 100 700 100 100 > time.txt
Now add some modifications to your output:
   $> cat time.txt | awk '{print $1}' | tr '\n' ' ' > time1.txt
Check time1.txt file, Copy the output and run the checker
   $> ./checker "Output"
