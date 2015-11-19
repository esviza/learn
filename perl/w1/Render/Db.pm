#!/usr/bin/perl
#
# @File Db.pm
# @Author ignaciocasinelli
# @Created Nov 19, 2015 5:27:22 PM
#
use v5.18;
use strict;
use warnings;

package Db;

sub new {
    my $class = shift;
    my $self  = {
        'db_host'        => '',
        'db_user'        => '',
        'db_pass'        => '',
        'db_database'    => '',
        'connection'     => 0,
        'last_result'    => 0,
        'last_sql'       => '',
        'last_insert_id' => 0
    };
    return bless $self, $class;
}

sub connect {
    my $self = shift;
}

sub query {
    my $self shift;
}

1;
