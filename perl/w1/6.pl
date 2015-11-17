#!/usr/bin/perl
#
# @File 6.pl
# @Author ignaciocasinelli
# @Created Nov 16, 2015 4:40:04 PM
#
use v5.18;
use strict;
use warnings;

use Supertabla::Point2D;
use Supertabla::Rectangle;



my $rectangle = Supertabla::Rectangle->new();
$rectangle->add_point( Supertabla::Point2D->new( 13, 9 ) );
$rectangle->add_point( Supertabla::Point2D->new( 12, 8 ) );
$rectangle->add_point( Supertabla::Point2D->new( 11, 7 ) );
$rectangle->say_points();

