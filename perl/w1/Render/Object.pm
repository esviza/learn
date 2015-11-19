#!/usr/bin/perl
#
# @File Object.pm
# @Author ignacio.casinelli
# @Created Nov 18, 2015 1:36:05 PM
#
use v5.18;
use strict;
use warnings;

package Render::Object;

#-- base constructor
sub new {
    my( $class, @args ) = @_;
    my $self = bless {}, $class;
    $self->_initialize( @args );
    return $self;
}

#--
# @return Object
sub _initialize {
    my( $self, @args ) = @_;
}

1;
