#!/usr/bin/perl
#
# @File CommandCreate.pm
# @Author ignaciocasinelli
# @Created Nov 17, 2015 4:46:38 PM
#
use v5.18;
use strict;
use warnings;

package Render::CommandCreate;

sub new {
    my $class = shift;
    my $self  = {};
    return bless $self, $class;
}

sub execute {
    my $self = shift;
    my $figureType = shift;
}

1;
