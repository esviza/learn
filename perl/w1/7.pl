#!/usr/bin/perl
#
# @File 7.pl
# @Author ignaciocasinelli
# @Created Nov 19, 2015 11:42:02 AM
#
use v5.18;
use strict;
use warnings;

use Render::FactoryOfCommand;
use Render::Db;

my $db = Render::Db->new();
$db->connect( 'nacho', 'nacho', 'nacho' );

my $command = Render::FactoryOfCommand->command( $ARGV[0] );
$command->inject_db( $db );
$command->execute( @ARGV );
