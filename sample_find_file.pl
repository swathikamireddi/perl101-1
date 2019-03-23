#! /usr/bin/perl

use strict;
use warnings;

use File::Find;

my @content;
find( \&wanted, 'C:\BCheks\private-git-repo\perl101');

sub wanted {
  push @content, $File::Find::name;
  my $fileName = $_;
  my $fileDir = $File::Find::dir;
  print "File Name - $fileDir - $fileName \n";
  return;
}

foreach my $eachFile (@content) {
    print "$eachFile \n";
}
