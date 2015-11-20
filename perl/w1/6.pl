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

my $command = Render::FactoryOfCommand->command( $ARGV[0] );

$command->execute( @ARGV );
