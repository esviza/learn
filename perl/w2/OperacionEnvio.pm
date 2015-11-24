#!/usr/bin/perl
#
# @File OperacionEnvio.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:02:46 AM
#
use v5.18;
use strict;
use warnings;
package OperacionEnvio;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
