#!/usr/bin/perl
#
# @File ConsultaEstadoPedido.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:06:45 AM
#
use v5.18;
use strict;
use warnings;
package ConsultaEstadoPedido;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
