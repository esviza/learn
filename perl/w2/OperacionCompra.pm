#!/usr/bin/perl
#
# @File OperacionCompra.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:01:46 AM
#
use v5.18;
use strict;
use warnings;
package OperacionCompra;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
