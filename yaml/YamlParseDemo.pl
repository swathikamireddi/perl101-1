#! /usr/bin/perl

use strict;
use warnings;
use YAML;
use YAML qw(Dump Bless LoadFile);

my $hash = {apple => 'good', banana => 'bad', cauliflower => 'ugly'};
print Dump $hash;
Bless($hash)->keys(['banana', 'apple']);
print Dump $hash;

eval {
        my %sample_hash = % { LoadFile('sample.yml') };
        print "$sample_hash{'YAML'} \n";
        1;
    } or do {
        my $error = $@ || 'Unknown failure!';
        warn $error;
};