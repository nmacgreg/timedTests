From a Linux desktop, I use this crontab to generate a test, with a little lpr magic to print it, at the same time 
my kids get home from school -- the tests are waiting for him when he gets home.

12 15 * * * /home/nmacgreg/homework/Maxwell/timeTest/t1.pl | lpr -o cpi=6 -o lpi=4


