#!/usr/bin/perl

use strict;

# Sample hash with key values
my %SAMPLE_HASH = ();

$SAMPLE_HASH{'Year'} = '2019';
$SAMPLE_HASH{'Month'} = '12';
$SAMPLE_HASH{'Days'} = '30';

my @sample_keys = keys %SAMPLE_HASH;
for my $each_key (@sample_keys) {
    my $each_value = $SAMPLE_HASH{$each_key};
    print "$each_value \n";
}

# Sample hash with key and value as array
my %SAMPLE_HASH_KEY_ARRAY = ();

$SAMPLE_HASH_KEY_ARRAY{'Year'} = ['2019', '2018'];
$SAMPLE_HASH_KEY_ARRAY{'Month'} = ['12', '11', '10', '9'];
$SAMPLE_HASH_KEY_ARRAY{'Days'} = ['30', '29' , '28', '27', '26'];


my @sample_keys_array = keys %SAMPLE_HASH_KEY_ARRAY;
for my $each_key (@sample_keys_array) {
    my @value_array = $SAMPLE_HASH_KEY_ARRAY{$each_key};
    my $size_value_array = scalar @value_array;
    print "Size - $size_value_array\n";
    if( $size_value_array > 0) {
        for my $each_value_a (@value_array) {
            print "$each_value_a \n";
        }
    }
    
}