#!/usr/bin/perl
#
# @File CoordinatePoint.pm
# @Author ignaciocasinelli
# @Created Nov 16, 2015 5:43:11 PM
#
use v5.18;
use strict;
package Supertabla::CoordinatePoint;

sub new
{
    say "CoordinatePoint::new();";
    my $class = shift;
    my $self  = {};
    return bless $self, $class;
}

sub DESTROY
{
    say "CoordinatePoint::DESTROY;";
}

sub MiMetodo
{
    say "CoordinatePoint::MiMetodo();";
}

1;