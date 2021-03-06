#!/usr/bin/perl
#
# @File Figure.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 10:54:11 AM
#
use v5.18;
use strict;
use warnings;
use GD;

package Render::Figure;

use parent 'Render::Object';
use Render::Db;

sub _initialize {
    my( $self, @args ) = @_;
    $self->{type}   = $args[0]->{type}   || '';
    $self->{points} = $args[0]->{points} || [];
    $self->{color}  = $args[0]->{color}  || '0,0,0';
}

#-- adds a CoordinatePoint
sub add_points {
    my $self = shift;
    push @{$self->{'points'}}, shift;
}

sub save {
    my( $self, @args ) = @_;
    my $db = $args[0];
    
    my $type = "'".$self->{type}."'";
    my $points = '';
    foreach ( @{$self->{points}} ){
        $points = $points.' '.$_->to_string();
    }
    $points = "'".$points."'";

    
    if ( defined $db )
    {
        $db->insert(
            'FIGURE',
            {'type'   => $type,
             'points' => $points } );
    }
}

1;
