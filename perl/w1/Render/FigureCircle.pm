#!/usr/bin/perl
#
# @File Circle.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 11:05:43 AM
#
use v5.18;
use strict;
use warnings;
use Math::Complex;
use Math::Trig;

package Render::FigureCircle;

use parent 'Render::Figure';

#--
sub _initialize {
    my $self = shift;
    $self->{type}  = 'circle';
    $self->{color} = 'orange';
}

#-- 
sub render_into_canvas {
    
    my $self   = shift;
    my $canvas = shift;

    $canvas->color( $self->{color} );
    
    my $center    = $self->{points}[0];
    my $perimeter = $self->{points}[1];

    my $a = Math::Complex->make( $center->x(), $center->y() );
    my $b = Math::Complex->make( $perimeter->x(), $perimeter->y() );
    my $diameter = abs($a - $b) * 2;
    
    $canvas->gdi()->moveTo( $center->x(), $center->y() );
    $canvas->gdi()->arc( $diameter, $diameter, 0, 360 );
        
}

#--
sub area {
    my $self = shift;
    
    my $center    = $self->{points}[0];
    my $perimeter = $self->{points}[1];

    my $a = Math::Complex->make( $center->x(), $center->y() );
    my $b = Math::Complex->make( $perimeter->x(), $perimeter->y() );
    my $radius = abs($a - $b);
    
    return 3.1415926 * ( $radius ** 2 );
}


1;
