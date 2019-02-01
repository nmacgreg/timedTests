#!/usr/bin/perl -w 
# Purpose: print math question for Grade 5 "Timed Tests"

#use taint; 
use strict; 
use Getopt::Long; 
my $maxProduct = 42;  						# Declare a variable & set a default
my $maxDiv;
GetOptions (	"maxProduct=i"	=> \$maxProduct, 
		"maxDiv=i"	=> \$maxDiv
	);
#$maxProduct = $ARGV[0] if defined $ARGV[0]; 			# Read from the commandline

# Generate two real, random numbers: 
my $roundDownTo = 2;						# This variable prevents questions that are too simple, like "0 x 1" & "1 X 6"
print "Products to $maxProduct\n";
print "Division questions to $maxDiv\n" if defined $maxDiv;
print "\n";

my ($maxQuestions, $randA, $randB, $randC ); 
for ($maxQuestions = 1; $maxQuestions<31; $maxQuestions++) {
	do {
		# New requirement: questions like 3x16=38 are "too hard".  The rubric says "hardest question: 7x7".
		$randA = int(rand(9));
		$randB = int(rand(9));
	} while (($randA * $randB >= $maxProduct) || $randA < $roundDownTo || $randB < $roundDownTo );

	if ((defined $maxDiv) and (($randA * $randB) <= $maxDiv)) { 
		$randC=int(rand(2));
		if ( $randC == 1  ) {
			print "$maxQuestions. " . $randA * $randB .  " ÷ $randB =\n";
		}else {
			print "$maxQuestions. $randA x $randB =\n";
		}
	} else {
		print "$maxQuestions. $randA x $randB =\n";
	}

}
