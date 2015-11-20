#!/usr/bin/perl
#
# @File CommandFactory.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 4:48:42 PM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfCommand;

#-- commands
use Render::CommandCreate;

#-- 
# @param $commandName
# @param %parameters
# @return Command
sub command {
    my( $class, @args ) = @_;

    my $commandName = $args[0];
    if ( not defined $commandName ){
        say STDERR "\nMissing command.\n";
        exit 1;
    }
    
    if ( not $commandName =~ /(create|list)/ ){
        say STDERR "\nUnknown command: $args[0]\n";
        exit 1;
    }
    
    my $commandClass = 'Render::Command'.(ucfirst $commandName);
    return $commandClass->new();
}

1;
