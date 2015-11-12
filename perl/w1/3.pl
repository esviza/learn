#!/usr/bin/perl
#
# @File 3.pl
# @Author ignaciocasinelli
# @Created Nov 12, 2015 2:36:06 PM
#

use v5.14;

print "Please enter the text which should be parsed:\n";
my $string = <STDIN>;

print "Please enter space separated strings to match and replace (one pair per line).\n";
print "Empty line will interrupt input and start execution:\n";

my $pair;
my %replaceList;

chomp( $pair = <STDIN> );
while ( $pair ){
	my( $search, $replace ) = split( / /, $pair );
	$replaceList{$search} = $replace;
	chomp( $pair = <STDIN> );
}

#-- reemplazo
my $keys = join( '|', keys %replaceList );
$string =~ s/($keys)/$replaceList{$1}/g;

#-- output
print STDOUT $string, "\n";
exit 0;

