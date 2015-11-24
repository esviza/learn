#!/usr/bin/perl
#
# @File Usuario.pm
# @Author ignaciocasinelli
# @Created Nov 24, 2015 11:12:34 AM
#
use v5.18;
use strict;
use warnings;
package Usuario;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
