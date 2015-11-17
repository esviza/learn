#!/usr/bin/perl
#
# @File FactoryFigure.pm
# @Author ignaciocasinelli
# @Created Nov 17, 2015 5:38:15 PM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfFigures;

use Render::Figure;
use Render::FigureCircle;
use Render::FigureRectangle;
use Render::FigureSquare;

sub new {
    my $class = shift;
    my $self  = {};
    return bless $self, $class;
}

1;
