#!/usr/bin/perl -w 
# Purpose: print math question for Grade 5 "Timed Tests"
use strict; 
#use taint; 

# Generate two real, random numbers: 
my $productsTo = 42;  						# Declare a variable & set a default
$productsTo = $ARGV[0] if defined $ARGV[0]; 			# Read from the commandline
my $roundDownTo = 2;						# This variable prevents questions that are too simple, like "0 x 1" & "1 X 6"
print "Subject: Products to $productsTo\n\n";
my ($maxQuestions, $randA, $randB ); 
for ($maxQuestions = 1; $maxQuestions<31; $maxQuestions++) {
	do {
		# New requirement: questions like 3x16=38 are "too hard".  The rubric says "hardest question: 7x7".
		#$randA = int(rand($productsTo));
		#$randB = int(rand($productsTo));
		$randA = int(rand(9));
		$randB = int(rand(9));
	} while (($randA * $randB >= $productsTo) || $randA < $roundDownTo || $randB < $roundDownTo );

	print "$maxQuestions. $randA x $randB =\n";

}
