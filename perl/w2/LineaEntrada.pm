#!/usr/bin/perl
#
# @File LineaEntrada.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:12:23 AM
#
use v5.18;
use strict;
use warnings;
package LineaEntrada;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
