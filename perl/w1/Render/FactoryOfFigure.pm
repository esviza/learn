#!/usr/bin/perl
#
# @File FactoryFigure.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 5:38:15 PM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfFigure;

#-- figure types
use Render::Figure;
use Render::FigureCircle;
use Render::FigureRectangle;
use Render::FigureSquare;
use Render::FigureTriangle;

#-- 
# @param $figureType
# @param @points
# @return Figure
sub figure {
    my( $class, @args ) = @_;
    
    my $figureType = $args[0];
    if ( not defined $figureType ){
        say STDERR "\nMissing figure type.\n";
        exit 1;
    }
    
    if ( not $figureType =~ /(rectangle|square|triangle|circle)/ ){
        say STDERR "\nUnknow figure type: $figureType\n";
        exit 1;
    }
    
    my $className = 'Render::Figure'.(ucfirst $figureType);
    return $className->new();
}

1;
