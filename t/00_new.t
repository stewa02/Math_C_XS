#!/usr/bin/perl

use strict;
use warnings;
use lib 'C:/Users/sw/Desktop/Math';
use Test::More;

# test of import functionality
use_ok('Math::C::XS');

# test of constructor
my $got_1 = Math::C::XS->new(1);
my $exp_1 = "Math::C::XS";
isa_ok($got_1, $exp_1);

# test of attributes
my $exp_2 = 1;
my $got_2 = $got_1->{zahl};
cmp_ok($got_2, "==", $exp_2);

# add tests here

done_testing();
