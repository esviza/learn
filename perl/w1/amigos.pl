#!/usr/bin/perl
#
# @File amigos.pl
# @Author ignaciocasinelli
# @Created Nov 19, 2015 12:20:04 PM
#
use v5.18;
use strict;

my %grupos = {'laburo'  => ['eric','laura','pablo','martin'],
              'amigos'  => ['juan','diego','tamara'],
              'familia' => ['malena','natalia','hebe'] };
            

print "Result: ".$grupos[1]."\n";