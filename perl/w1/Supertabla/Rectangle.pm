#!/usr/bin/perl
#
# @File Rectangle.pm
# @Author ignaciocasinelli
# @Created Nov 17, 2015 11:05:29 AM
#
use v5.18;
use strict;
use warnings;

package Supertabla::Rectangle;

use parent 'Supertabla::Figure';

sub new {
    my $class = shift;
    my $self  = {};
    return bless $self, $class;    
}

1;
