#! /usr/bin/perl

use strict;
use warnings;

# Create new directory
sub createDirectory {
    my $baseDirectory = $_[0];
    my $directory = $_[1];
    if(!defined($baseDirectory)) {
        $baseDirectory = '.';
    } elsif ($baseDirectory eq '' || $baseDirectory =~ m/^\s*$/) {
        $baseDirectory = '.';
    }
    if (-e $baseDirectory && -d $baseDirectory) {
        unless(mkdir $directory) {
            die "Unable to create \"$directory\"!\n";
        } else {
            print "Successfully \"$directory\" directory created.\n";
        }
    } else {
        die "Base directory \"$baseDirectory\" is not found!\n";
    }
}

createDirectory('', 'test');