#!/usr/bin/perl
#
# @File Figure.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 10:54:11 AM
#
use v5.18;
use strict;
use warnings;

package Render::Command;

use parent 'Render::Object';

sub _initialize {
    my( $self, @args ) = @_;
    $self->{db} = $args[0]->{db};
}

sub execute {
    my $self = shift;
}

1;
