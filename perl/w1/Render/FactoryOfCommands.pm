#!/usr/bin/perl
#
# @File CommandFactory.pm
# @Author ignaciocasinelli
# @Created Nov 17, 2015 4:48:42 PM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfCommands;

use Render::CommandCreate;

#-- @return Command
sub create_command {
    my $class = shift;
    my $type  = 'Render::Command'.(ucfirst shift);
    return $type->new();
}

1;
