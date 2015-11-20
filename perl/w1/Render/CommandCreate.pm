#!/usr/bin/perl
#
# @File CommandCreate.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 4:46:38 PM
#
use v5.18;
use strict;
use warnings;

package Render::CommandCreate;

use parent 'Render::Object';

use Render::FactoryOfFigure;
use Render::FactoryOfPoint2D;
use Render::FactoryOfCanvas;

sub _initialize {
    my( $self, @args ) = @_;
    $self->{figureType} = '';
    $self->{userPoints} = [];
    return $self;
}

sub execute {
    my( $self, @args ) = @_;
    
    $self->{figureType} = $args[1];
    $self->{userPoints} = [ $args[2], $args[3], $args[4], $args[5] ];
    
    my $figure = Render::FactoryOfFigure->figure( $self->{figureType} );

    #-- adding points to figure
    foreach ( @{ $self->{userPoints} } ){
        if ( defined $_ ){
            $figure->add_points( Render::FactoryOfPoint2D->from_xy( $_ ) );
        }
    }

    #-- save into PNG
    my $canvas = Render::Canvas->new( 500, 500 );
    $figure->render_into_canvas( $canvas );
    my $file_name = $self->{figureType}.".png"; 
    $canvas->save( $file_name );

    #-- calcular area
    my $area = $figure->area();
    say "\nOutput => $file_name with an area of $area \n";
    
    #-- save to table
    $figure->save();
    
    return ( result => 0,
             figure => $figure,
             canvas => $canvas,
             area   => $area );
    
}

1;
