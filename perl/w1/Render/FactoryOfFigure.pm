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
    my $class = shift;
    my $type  = 'Render::Figure'.(ucfirst shift);
    return $type->new();
}

1;
