#!/usr/bin/perl

use strict;
use warnings;
use lib 'C:/Users/sw/Desktop/Math';
use Test::More;

# test of import functionality
use_ok('Math::C::XS');
my $obj = Math::C::XS->new(Number => 0);

# oo interface
my $got_1 = $obj->sin;
my $exp_1 = 0;
cmp_ok($got_1, "==", $exp_1);

# functional interface
my $got_2 = Math::C::XS::sin(0);
my $exp_2 = 0;
cmp_ok($got_2, "==", $exp_2);

# add tests here

done_testing();
