#!/usr/bin/perl
#
# @File ResultadoOperacion.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:08:15 AM
#
use v5.18;
use strict;
use warnings;
package ResultadoOperacion;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
