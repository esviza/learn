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
    my $class = shift;
    my $type  = 'Render::Command'.(ucfirst shift);
    return $type->new( shift );
}

1;
