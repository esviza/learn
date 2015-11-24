#!/usr/bin/perl
#
# @File OperacionEntrega.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:03:06 AM
#
use v5.18;
use strict;
use warnings;
package OperacionEntrega;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
