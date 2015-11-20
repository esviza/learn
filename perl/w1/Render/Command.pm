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
    $self->{db} = 0;
    return $self;
}

sub execute {
    my $self = shift;
}

sub inject_db {
    my( $self, @db );
    $self->{db} = $db[0];
    return $self;
}

1;
