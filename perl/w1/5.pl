#!/usr/bin/perl
#
# @File 5.pl
# @Author ignaciocasinelli
# @Created Nov 13, 2015 4:56:56 PM
#

use strict;
use Paths::Graph;

open ( ORIGIN, "<:utf8", "nodos.txt" ) || die "Can't open origin: $!\n";

my %map;
my $linea = 0;
my $origen;
my $destino;

while ( <ORIGIN> ){

    $linea++;
    chomp;
    
    my @node = split / /;

    #-- corte control;
    if ( !$node[0] ){
        last;
    }
    
    #-- guardo origen y destino
    if ( $linea == 1 ){
        ( $origen, $destino ) = @node;
        next;
    }
    
    #-- armo mapa estilo ( A=( B=1, C=1, D=1 ), B=( A=1, C=1, D=1 ) )
    if ( exists $map{$node[0]} ){
        $map{$node[0]}{$node[1]} = 1;
    } else {
        $map{$node[0]} = {};
        $map{$node[0]}{$node[1]} = 1;
    }
    
}

#-- encuentro solucion
my $obj = Paths::Graph->new(
                -origin=>$origen,
                -destiny=>$destino,
                -graph=>\%map);
my @way  = $obj->shortest_path();
my $path = scalar @{$way[0]};
$path    = $path -1;

print STDOUT "$path\n\n";

exit 0;