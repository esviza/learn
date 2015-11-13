#!/usr/bin/perl
#
# @File 5.pl
# @Author ignaciocasinelli
# @Created Nov 13, 2015 4:56:56 PM
#

use strict;

my %map;

$map{node83} = ( 'node16', 'node12', 'node01' );
$map{node12} = ( 'node11', 'node04', 'node16' );
$map{node04} = ( 'node05', 'node16', 'node01' );

while ( <> ){
    chomp;
    $nodes = split / /;
    
}