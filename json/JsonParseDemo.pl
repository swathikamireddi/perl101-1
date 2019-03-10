#! /usr/bin/perl

use strict;
use warnings;

use JSON;

my $student = {
    name => 'Foo Bar',
    email => 'foo@bar.com',
    gender => undef,
    classes => [
        'Chemistry',
        'Math',
        'Literature',
    ],
    address => {
        city => 'Fooville',
        planet => 'Earth',
    },
};

my $json = JSON->new->allow_nonref;
my $student_text = $json->encode( $student );
print "$student_text \n";


my $student_pretty_printed = $json->pretty->encode( $student ); 
print "$student_pretty_printed \n";

my %student_scalar = % { $json->decode( $student_text ) };
my $student_name = $student_scalar{'name'};
my @student_class = @ { $student_scalar{'classes'} };
print "Student Name - $student_name \n";
print "Student Class - @student_class \n";



