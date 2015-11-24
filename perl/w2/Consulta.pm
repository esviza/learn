#!/usr/bin/perl
#
# @File Consulta.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:06:00 AM
#
use v5.18;
use strict;
use warnings;
package Consulta;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
