#!/usr/bin/perl
#
# @File index.pl
# @Author ignaciocasinelli
# @Created Nov 23, 2015 12:22:35 PM
#
use strict;
use Apache2::RequestUtil;

my $r = Apache2::RequestUtil->request;
$r->content_type('text/html');
$r->print('mod_perl rules!');
