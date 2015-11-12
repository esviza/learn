#!/usr/bin/perl
#
# @File 4.pl
# @Author ignaciocasinelli
# @Created Nov 12, 2015 2:36:06 PM
#

use v5.14;

my %map = ( 'one'       => 1, 
	    'two'       => 2,
	    'three'     => 3,
	    'four'      => 4,
            'five'      => 5, 
            'six'       => 6,
            'seven'     => 7,
	    'eight'     => 8,
	    'nine'      => 9,
	    'eleven'    => 11,
	    'twelve'    => 12,
	    'thirteen'  => 13,
	    'fourteen'  => 14,
	    'fiveteen'  => 15,
            'sixteen'   => 16,
	    'seventeen' => 17,
	    'eighteen'  => 18,
	    'nineteen'  => 19,
	    'ten'       => 10,
	    'twenty'    => 20,
	    'thirty'    => 30,
	    'fourty'    => 40,
	    'fifty'     => 50,
	    'sixty'     => 60, 
            'seventy'   => 70,
	    'eighty'    => 80,
	    'ninety'    => 90,
	    'hundred'   => 100,
	    'thousand'  => 1000 );

#  thirty four thousand two hundred fifty one
#  30 4 1000 2 100 50 1

#  ten thousand eleven 
#  10 1000 11


open ( ORIGIN, "<:utf8", "origin.txt" ) || die "Can't open origin: $!\n";

my @buffer;
my @words;

while ( my $line = <ORIGIN> ){

	my $lineTotal = 0;
	my $prev      = 0;

	chomp( $line );

	if ( !$line ){
		 last;
	}

	@words = split( / /, $line );
	foreach my $word (@words){
		my $wordValue = $map{$word};
		if ( !$wordValue ){
			print STDERR "Error: what is $word ??\n";
			exit 1;
		}
		#print $word, ' = ', $wordValue, "\n";
		if ( $prev == 0 ){
			$prev = $wordValue;
		} elsif ( $prev > $wordValue ){
			$prev = $prev + $wordValue;
		} else {
			$prev = $prev * $wordValue;
		}
		if ( $wordValue >= $map{thousand} ){
			$lineTotal = $lineTotal + $prev;
			$prev = 0; 
		}
	}

	if ( $prev > 0 ){
		$lineTotal = $lineTotal + $prev;
	}

	print STDOUT $line, ' = ', $lineTotal, "\n";

}


exit 0;

