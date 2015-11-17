#!/usr/bin/perl
#
# @File Figure.pm
# @Author ignaciocasinelli
# @Created Nov 17, 2015 10:54:11 AM
#
use v5.18;
use strict;

package Supertabla::Figure;

sub new {
    my $class = shift;
    my $self  = { 'points' => [] };
    return bless $self, $class;
}

#-- adds a CoordinatePoint
sub add_point {
    my $self  = shift;
    my $point = shift;
    push @{$self->{'points'}}, $point;
}

#-- say the points we have
sub say_points {
    my $self = shift;
    foreach my $point ( @{$self->{points}} ){
        $point->say_hi();
    }
}

1;
