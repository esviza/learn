#!/usr/bin/perl
#
# @File TipoOperacion.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:01:34 AM
#
use v5.18;
use strict;
use warnings;
package TipoOperacion;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
