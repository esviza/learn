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
use Render::Canvas;

sub _initialize {
    my( $self, @args ) = @_;
    $self->{figureType} = '';
    $self->{userPoints} = [];
    return $self;
}

sub execute {
    my( $self, @args ) = @_;
    
    $self->{figureType} = $args[0]->{figureType};
    $self->{userPoints} = $args[0]->{userPoints};
    
    #-- prepare figure with points
    my $figure = Render::FactoryOfFigure->figure( $self->{figureType} );
    foreach ( @{ $self->{userPoints} } ){
        if ( $_ ){
            $figure->add_points( Render::FactoryOfPoint2D->from_xy( $_ ) );
        }
    }

    my $canvas = Render::Canvas->new( 500, 500 );
    
    $figure->render_into_canvas( $canvas );
    
    my $file_name = $self->{figureType}.".png"; 
    $canvas->save( $file_name );
    
    my $area = $figure->area();
    
    say "\nOutput => $file_name with an area of $area \n";
    
}

1;
