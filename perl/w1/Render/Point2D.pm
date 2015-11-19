#!/usr/bin/perl
#
# @File Point2D.pm
# @Author ignacio.casinelli
# @Created Nov 16, 2015 5:43:11 PM
#
use v5.18;
use strict;
use warnings;

package Render::Point2D;

use parent 'Render::Object';

#--
sub _initialize {
    my( $self, @args ) = @_;
    $self->{X} = $args[0];
    $self->{Y} = $args[1];
    return $self;
}

# getter/setter X
# @return number
sub X {
    my $self = shift;
    if (@_){
        $self->{X} = shift;
    }
    return $self->{X};
}

# Obtiene/setea el valor de Y
# @return number
sub Y
{
    my $self = shift;
    if (@_){
        $self->{Y} = shift;
    }
    return $self->{Y};
}

1;
