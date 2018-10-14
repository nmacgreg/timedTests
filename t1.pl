#!/usr/bin/perl -w 
use strict; 
# print questions to STDOUT

# Generate two real, random numbers: 
my $productsTo = 42;
$productsTo = $ARGV[0] if defined $ARGV[0];
my $roundDownTo = 2;
print "Products to $productsTo\n\n";
my ($maxQuestions, $randA, $randB ); 
for ($maxQuestions = 1; $maxQuestions<31; $maxQuestions++) {
	do {
		$randA  = int(rand($productsTo));
		$randB  = int(rand($productsTo));
	} while (($randA * $randB >= $productsTo) || $randA < $roundDownTo || $randB < $roundDownTo);

	print "$maxQuestions. $randA x $randB =\n";

}
