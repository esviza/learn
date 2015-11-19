#!/usr/bin/perl
#
# @File FactoryOfCanvas.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 4:48:42 PM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfCanvas;

#-- commands
use Render::Canvas;

#-- 
# @param %parameters
# @return Render::Canvas
sub command {
    my $class = shift;
    return Render::Canvas->new( shift );
}

1;
