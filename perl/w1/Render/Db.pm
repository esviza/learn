#!/usr/bin/perl
#
# @File Db.pm
# @Author ignaciocasinelli
# @Created Nov 19, 2015 5:27:22 PM
#
use v5.18;
use strict;
use warnings;
use DBI;

package Render::Db;

sub new {
    my( $class, @args ) = @_;
    my $self = {
        'host'           => 'localhost',
        'user'           => 'root',
        'database'       => '',
        'connection'     => 0,
        'last_result'    => 0,
        'last_sql'       => '',
        'last_insert_id' => 0
    };
    return bless $self, $class;
}

sub connect {
    my( $self, @args ) = @_;
    if ( defined $args[0] ){
        $self->{database} = $args[0];
    }
    if ( defined $args[1] ){
        $self->{user} = $args[1];
    }
    if ( defined $args[3] )
    {
        $self->{host} = $args[3];
    }
    my $cs = "DBI:mysql:database=".$self->{database}.";host=".$self->{host};
    $self->{connection} = DBI->connect( $cs,$self->{user},$args[2]) || die "Could not connect to database: $DBI::errstr";
}

sub disconnect {
    my $self = shift;
    $self->{connection}->disconnect();
}

sub insert {
    my( $self, @args ) = @_;

    my $sql = "INSERT INTO $args[0] (";
    $sql = $sql . join(',',keys %{$args[1]});
    $sql = $sql . ") VALUES (";
    $sql = $sql . join(',',values %{$args[1]});
    $sql = $sql . ");";
    $self->{connection}->do( $sql );
    
    $self->{last_insert_id} = $self->{connection}->last_insert_id(undef,undef,undef,undef);
}

sub query {
    my $self = shift;
    my $sql = shift;
    $self->{last_sql} = $sql;
    my $aux = $self->{connection}->prepare( $sql );
    $aux->execute();
    return $aux;
}



1;
 