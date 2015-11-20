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
    $self->{x} = $args[0];
    $self->{y} = $args[1];
    return $self;
}

# getter/setter X
# @return number
sub x {
    my $self = shift;
    if (@_){
        $self->{x} = shift;
    }
    return $self->{x};
}

# Obtiene/setea el valor de Y
# @return number
sub y
{
    my $self = shift;
    if (@_){
        $self->{y} = shift;
    }
    return $self->{y};
}

1;
