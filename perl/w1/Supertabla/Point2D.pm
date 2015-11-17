#!/usr/bin/perl
#
# @File Point2D.pm
# @Author ignaciocasinelli
# @Created Nov 16, 2015 5:43:11 PM
#
use v5.18;
use strict;
use warnings;

package Supertabla::Point2D;

sub new {
    my $class = shift;
    my $self  = { X => shift, Y => shift };
    return bless $self, $class;
}

##
# getter/setter X
# @return number
sub X {
    my $self = shift;
    if (@_){
        $self->{X} = shift;
    }
    return $self->{X};
}

##
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
