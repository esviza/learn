#!/usr/bin/perl
#
# @File 2.pl
# @Author ignaciocasinelli
# @Created Nov 12, 2015 2:36:06 PM
#

use v5.14;

my $min = 2;
my $max = 1000000;

print "Please enter a number between $min and $max:\n";
chomp( my $n = <STDIN> );

if ( $n < $min || $n > $max ){
	print STDERR "Bad input.\n";
	exit 1;
}

my $primo;
my $i;
my $j;
my $sqrt;

for ( $i=1; $i<$n; $i=$i+2 ){

	$sqrt  = sqrt $i;
	$j     = 2;
	$primo = 0;

	while (1){
		if ( $i % $j == 0 ) last;
		if ( $j > $sqrt ){
			$primo = 1;
			last;
		}
		$j++;
	}

	if ( $primo ){
		 print STDOUT "$i ";
	}

}

print STDOUT "\n";

