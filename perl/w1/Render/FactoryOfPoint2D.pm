#!/usr/bin/perl
#
# @File FactoryOfPoint2D.pm
# @Author ignacio.casinelli
# @Created Nov 18, 2015 10:25:48 AM
#
use v5.18;
use strict;
use warnings;

package Render::FactoryOfPoint2D;

use Render::Point2D;

#-- 
# @param $X
# @param $Y
# @return Point2D
sub from_xy {
    my $class = shift;
    my( $X, $Y ) = split(',',shift);
    return Render::Point2D->new( $X, $Y );
}

1;
