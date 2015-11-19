#!/usr/bin/perl
#
# @File Canvas.pm
# @Author ignacio.casinelli
# @Created Nov 18, 2015 2:41:58 PM
#
use v5.18;
use strict;
use warnings;
use GD::Simple;

package Render::Canvas;

use parent 'Render::Object';

sub _initialize {
    my( $self, @args ) = @_;
    $self->{gdi} = GD::Simple->new( $args[0] || 500, $args[1] || 500 );
}

#--
# obtains the GD image object
sub gdi {
    my $self = shift;
    return $self->{gdi};
}

#--
sub color {
    my( $self, @args ) = @_;
    $self->{gdi}->bgcolor( $args[0] );
    $self->{gdi}->fgcolor( $args[0] );
}

#--
sub save {
    my( $self, @args ) = @_;
    open ( OUTPNG, '>', $args[0] ) || die;
    binmode OUTPNG;
    print OUTPNG $self->{gdi}->png();
    close OUTPNG;
}

1;
