#!/usr/bin/perl
#
# @File CommandList.pm
# @Author ignacio.casinelli
# @Created Nov 17, 2015 4:46:38 PM
#
use v5.18;
use strict;
use warnings;
use DBI;

package Render::CommandList;

use parent 'Render::Command';
use Render::Db;
use Render::FactoryOfFigure;
use Render::FactoryOfPoint2D;

sub execute {
    my( $self, @args ) = @_;

    my $figureType = $args[1];
    if ( not defined $figureType ){
        say STDERR "\nMissing figure type.\n";
        exit 1;
    }
    
    if ( defined $self->{db} )
    {
        my $sql = "SELECT id,type,points FROM FIGURE WHERE type='$figureType';";
        my $aux = $self->{db}->query( $sql );
        say "\nID\tTYPE\t\tPOINTS";
        say "------------------------------------------";
        while ( my @row = $aux->fetchrow_array ) {
            say $row[0], "\t", $row[1], "\t", $row[2];
        }
        say '';
    }
    
}

1;
