#!/usr/bin/perl
#
# @File 6.pl
# @Author ignaciocasinelli
# @Created Nov 16, 2015 4:40:04 PM
#
use v5.18;
use strict;
use Supertabla::CoordinatePoint;

my $o = Supertabla::CoordinatePoint->new();
$o->MiMetodo();

my $p = Supertabla::CoordinatePoint->new();
$p->MiMetodo();
undef $p;
