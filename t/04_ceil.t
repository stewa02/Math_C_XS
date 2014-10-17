#!/usr/bin/perl

use strict;
use warnings;
use lib 'C:/Users/sw/Desktop/Math';
use Test::More;

# test of import functionality
use_ok('Math::XS');
my $obj = Math::XS->new(3.14);

# test of cosine function
my $got_1 = $obj->ceil;
my $exp_1 = 4;
cmp_ok($got_1, "==", $exp_1);

# add tests here

done_testing();
