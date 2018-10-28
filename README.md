From a Linux desktop, I use this crontab to generate a test, with a little lpr magic to print it, at the same time 
my kids get home from school -- the tests are waiting for him when he gets home.

12 15 * * * /home/nmacgreg/homework/Maxwell/timeTest/t2.pl --maxProduct=28| lpr -o cpi=6 -o lpi=4
12 15 * * * /home/nmacgreg/homework/Maxwell/timeTest/t2.pl --maxProduct=49 --maxDiv=12 | lpr -o cpi=6 -o lpi=4

Oct 18, 2018
Until this week, his goal was "products up to 32", which I think was a goal for Grade 3.

But this week, the goalposts also "changed shape", as the target is now stated as "Most Challenging Question: 7x7", 
and looking ahead in the rubric, the goal for this year is clearly multiplication & division, up to 12.


Oct 25, 2018
This week's goal is "Most challenging question: 7x7 &  12/4"
This week, we're adding division questions, controllable with the new maxDiv parameter.
Is this a bug?  All questions less than or equal to the new "--maxDiv" parameter are printed as division questions.
Eventually this will be a problem. 
