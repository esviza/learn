#!/usr/bin/perl
#
# @File Triangle.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 11:05:55 AM
#
use v5.18;
use strict;
use warnings;
use GD::Polygon;

package Render::FigureTriangle;

use parent 'Render::Figure';

#--
sub _initialize {
    my $self = shift;
    $self->{triangle} = 'triangle';
    $self->{color}    = 'green';
}

#-- 
sub render_into_canvas {
    
    my $self   = shift;
    my $canvas = shift;

    my $p1 = $self->{points}[0];
    my $p2 = $self->{points}[1];
    my $p3 = $self->{points}[2];

    $canvas->color( $self->{color} );
    
    my $poly = new GD::Polygon;
    $poly->addPt( $p1->x(), $p1->y() );
    $poly->addPt( $p2->x(), $p2->y() );
    $poly->addPt( $p3->x(), $p3->y() );
    
    $canvas->gdi()->polygon( $poly );
        
}

#--
sub area {
    my $self = shift;

    my $a = $self->{points}[0];
    my $b = $self->{points}[1];
    my $c = $self->{points}[2];
    
    return abs( ( ( $a->x() * ($b->y()-$c->y()) ) +
                  ( $b->x() * ($c->y()-$a->y()) ) +
                  ( $c->x() * ($a->y()-$b->y()) ) ) / 2 );
                  
                  
}

1;

