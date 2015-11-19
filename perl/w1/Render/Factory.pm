#!/usr/bin/perl
#
# @File Factory.pm
# @Author ignaciocasinelli
# @Created Nov 19, 2015 10:34:04 AM
#
use v5.18;
use strict;
use warnings;
package Factory;
sub new {
    my $class = shift;
    my $self  = {
    };
    return bless $self, $class;
}
1;
