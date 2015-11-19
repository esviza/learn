#!/usr/bin/perl
#
# @File 6.pl
# @Author ignaciocasinelli
# @Created Nov 16, 2015 4:40:04 PM
#
use v5.18;
use strict;
use warnings;

use Render::FactoryOfCommand;

# command figureType x1,y1 x2,y2 x3,y3
if ( not exists $ARGV[0] ){
    say STDERR "\nMissing command.\n";
    exit 1;
}
if ( not $ARGV[0] =~ /(create)/ ){
    say STDERR "\nUnknown command: $ARGV[0]\n";
    exit 1;
}
if ( not exists $ARGV[1] ){
    say STDERR "\nMissing type of figure.\n";
    exit 1;
}
if ( not $ARGV[1] =~ /(rectangle|circle|square|triangle)/ ){
    say STDERR "\nUnknown type: $ARGV[1]\n";
    exit 1;
}

#-- get command with parameters
my $command = Render::FactoryOfCommand->command( $ARGV[0] );

$command->execute( ('figureType' => $ARGV[1],
                    'userPoints' => [ $ARGV[2], $ARGV[3], $ARGV[4], $ARGV[5] ] ) );
