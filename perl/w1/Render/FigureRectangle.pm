#!/usr/bin/perl
#
# @File Rectangle.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 11:05:29 AM
#
use v5.18;
use strict;
use warnings;

package Render::FigureRectangle;

use parent 'Render::Figure';

sub _initialize {
    my $self = shift;
    $self->{type}  = 'rectangle';
    $self->{color} = 'blue';
}

#-- 
sub render_into_canvas {
    
    my $self   = shift;
    my $canvas = shift;

    my $topLeft     = $self->{points}[0];
    my $topRight    = $self->{points}[1];
    my $bottomLeft  = $self->{points}[2];
    my $bottomRight = $self->{points}[3];

    $canvas->color( $self->{color} );
    
    $canvas->gdi()->rectangle( 
        $topLeft->x(), $topLeft->y(),
        $bottomRight->x(), $bottomRight->y() );
        
}

#--
sub area {
    my $self = shift;
    my $topLeft     = $self->{points}[0];
    my $topRight    = $self->{points}[1];
    my $bottomLeft  = $self->{points}[2];
    my $bottomRight = $self->{points}[3];
    return ( $topRight->x() - $topLeft->x() ) * ( $bottomLeft->y() - $topLeft->y() );
}

1;
