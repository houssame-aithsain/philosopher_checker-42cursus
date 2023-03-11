This is a checker that i made for philosopher project(42curses), with this checker you can check the time that every philosopher eat or sleep or think, so you will see if the time is correct in every action or there is some threads(philosophers) that shouldn't take the action in that time.
 
  <h1>HOW THE CHECKER WORKS:</h1>
 It takes the time of every action that every thread made and compares it whit the next action so here he can see if there is an error or not.
 
 <h1>HOW TO RUN THE CHECKER:</h1>
<p>You need to compile the files:</p>
   $> make
<p>Put the output from your philosopher.out inside a file called time.txt:</p>
   $> ./philosopher 100 700 100 100 > time.txt
<p>Now add some modifications to your output:</p>
   $> cat time.txt | awk '{print $1}' | tr '\n' ' ' > time1.txt
<p>Check time1.txt file, Copy the output and run the checker</p>
   $> ./checker "Output"
