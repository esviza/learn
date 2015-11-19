#!/usr/bin/perl
#
# @File Figure.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 10:54:11 AM
#
use v5.18;
use strict;
use warnings;
use GD;

package Render::Figure;

use parent 'Render::Object';

sub _initialize {
    my( $self, @args ) = @_;
    $self->{points} = $args[0]->{points} || [];
    $self->{color}  = $args[0]->{color}  || '0,0,0';
}

#-- adds a CoordinatePoint
sub add_points {
    my $self  = shift;
    push @{$self->{'points'}}, shift;
}

1;
