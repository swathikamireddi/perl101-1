#!/usr/bin/perl

use strict;

my $my_str = 'Options allow-from="www.google.com|sb.waf.wer.net|www.bc.com|msb.waf.wer.net|msb.test.king.net|tmb.test.king.net.extra",  command="ls -ltr"';
my $match_str = '';

if ( $my_str =~ m/\s*allow-from\s*={1}\s*(["]).+?\1/ ) {
    print "Before Match - $` \n";
    my $match_val = $&;
    print "Match Out - $match_val \n";
    print "After Match - $' \n";
    if ($match_val =~ m/".*"/) {
        print "Match Out 2- $& \n";
    }
}

print "\n\n\n";

if ( $my_str =~ m/\s*\Q$match_str\E\|?/i ) {
    print "Match found\n";
    print "Input - $my_str\n";
    $my_str =~ s/\s*\Q$match_str\E\|?//gi ;
    print "Final Output 1 - $my_str \n";
    $my_str =~ s/\s*\|+\s*"\s*$/"/i;
    print "Final Output 2 - $my_str \n";
}
