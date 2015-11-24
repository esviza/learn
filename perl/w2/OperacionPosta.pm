#!/usr/bin/perl
#
# @File OperacionPosta.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:02:58 AM
#
use v5.18;
use strict;
use warnings;
package OperacionPosta;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
