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
    my $totf = fuel( $_ );
	print STDERR $totf;
	$total += $totf;
    while ( fuel( $totf ) > 0 ) {
	$totf = fuel( $totf );
	print STDERR $totf;
	$total += $totf;
    }
}


print "<$total>";

sub fuel {
    my $m   = shift;
    my $f   = floor( $m/3 ) - 2;

    return $f;
}
