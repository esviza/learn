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
    $self->{color} = 'green';
}

#-- 
sub render_into_canvas {
    
    my $self   = shift;
    my $canvas = shift;

    my $p1 = @{$self->{points}}[0];
    my $p2 = @{$self->{points}}[1];
    my $p3 = @{$self->{points}}[2];

    $canvas->color( $self->{color} );
    
    my $poly = new GD::Polygon;
    $poly->addPt( $p1->X(), $p1->Y() );
    $poly->addPt( $p2->X(), $p2->Y() );
    $poly->addPt( $p3->X(), $p3->Y() );
    
    $canvas->gdi()->polygon( $poly );
        
}

#--
sub area {
    my $self = shift;

    my $A = @{$self->{points}}[0];
    my $B = @{$self->{points}}[1];
    my $C = @{$self->{points}}[2];
    
    return abs( ( ( $A->X() * ($B->Y()-$C->Y()) ) + 
                  ( $B->X() * ($C->Y()-$A->Y()) ) +
                  ( $C->X() * ($A->Y()-$B->Y()) ) ) / 2 );
                  
                  
}

1;

