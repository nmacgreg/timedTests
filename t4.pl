#!/usr/bin/perl -w 
# Purpose: focus on times-tables

#use taint; 
use strict; 
use POSIX;
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

my $maxQuotient = floor sqrt $maxProduct;  # figure out which times-table we're focusing on, in this test
print "$maxQuotient times tables\n";

my ($maxQuestions, $randA, $randB, $randC, $randD ); 
for ($maxQuestions = 1; $maxQuestions<31; $maxQuestions++) {
	do {
		# New requirement: questions like 3x16=38 are "too hard".  The rubric says "hardest question: 7x7".
		$randA = $maxQuotient;  
		$randB = int(rand($maxQuotient));
	} while (($randA * $randB >= $maxProduct) || $randA < $roundDownTo || $randB < $roundDownTo );

	if ((defined $maxDiv) and (($randA * $randB) <= $maxDiv)) { 
		$randC=int(rand(2)); # select division or multiplication
		if ( $randC == 1  ) {
			print "$maxQuestions. " . $randA * $randB .  " ÷ $maxQuotient =\n";
		}else {
			print "$maxQuestions. $randA x $randB =\n";
		}
	} else {
		print "$maxQuestions. $randA x $randB =\n";
	}

}
