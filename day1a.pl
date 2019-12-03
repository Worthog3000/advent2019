#!/usr/bin/perl
#
## Purpose: 
#Usage: 

use strict;
use warnings;
use POSIX qw( floor );

$|++;
$\ = "\n";

my $total   = 0;
while ( <> ) {
    chomp;
    $total += fuel( $_ )
}

print STDERR $total;

sub fuel {
    my $m   = shift;
    my $f   = floor( $m/3 ) - 2;
    return $f;
}
