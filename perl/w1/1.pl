#!/usr/bin/perl
#
# @File ex1.pl
# @Author ignaciocasinelli
# @Created Nov 12, 2015 2:36:06 PM
#

use v5.14;

#-- input
my( $a, $b, $c ) = ( @ARGV[0] || 0,
		     @ARGV[1] || 0,
		     @ARGV[2] || 0 );

#-- a=0
if ( $a == 0 ){
	print STDERR "Bad parameter: A=0\n"; 
	exit 1;
}

#-- calculate roots
my @roots = [ 0, 0 ];
my $delta = $b**2 - ( 4*$a*$c );
if ( $delta < 0 ){
	print STDERR "Roots undefined: delta<0\n";
	exit 1;
} elsif ( $delta == 0 ){
	$roots[0] = $roots[1] = (-$b) / ( 2*$a );
} else {
	$roots[0] = ( (-$b) - sqrt($delta)) / (2*$a);
	$roots[1] = ( (-$b) + sqrt($delta)) / (2*$a);
}

#-- output
print STDOUT "$roots[0] $roots[1]\n";
exit 0;
