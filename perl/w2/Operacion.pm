#!/usr/bin/perl
#
# @File Operacion.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:01:28 AM
#
use v5.18;
use strict;
use warnings;
package Operacion;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
