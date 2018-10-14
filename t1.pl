#!/usr/bin/perl -w 
use strict; 
#
#
# print out questions

# Generate two real, random numbers: 
my $productsTo = 42;
my $roundDownTo = 2;
print "Products to $productsTo\n\n";
my ($counter, $randA, $randB ); 
for ($counter = 1; $counter<31; $counter++) {
	do {
		$randA  = int(rand($productsTo));
		$randB  = int(rand($productsTo));
	} while (($randA * $randB >= $productsTo) || $randA < $roundDownTo || $randB < $roundDownTo);

	print "$counter. $randA x $randB =\n";

}
