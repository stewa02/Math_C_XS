#!/usr/bin/perl

use strict;
use warnings;
use lib 'C:/Users/sw/Desktop/Math';
use Test::More;

# test of import functionality
use_ok('Math::C::XS');

# test of constructor
my $got_1 = Math::C::XS->new(Number => 1);
my $exp_1 = "Math::C::XS";
isa_ok($got_1, $exp_1);

# test of attributes
my $exp_2 = 1;
my $got_2 = $got_1->{Number};
cmp_ok($got_2, "==", $exp_2);

my $exp_3 = 1;
my $got_3 = $got_1->{Radians};
cmp_ok($got_3, "==", $exp_3);

# Errors
my $obj;
eval { $obj = Math::C::XS->new(3); };
my $got_4 = $@;
my $exp_4 = qr/Expected key-value pairs as arguments./;
like($got_4, $exp_4);

# Methods
my @methods = qw(sin cos asin acos ceil floor);
can_ok("Math::C::XS", @methods);
can_ok($got_1, @methods);

# add tests here

done_testing();
