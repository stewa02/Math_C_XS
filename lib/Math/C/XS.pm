#!/usr/bin/perl

package Math::C::XS;
use strict;
use warnings;

use XSLoader;
use Exporter;

our $VERSION = '0.001';
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(sin cos asin acos ceil floor);

XSLoader::load('Math::C::XS', $VERSION);

1;

__END__

=pod

=head1 NAME

Math::C::XS - Object-oriented interface to the C Math-library

=head1 SYNOPSIS

    use Math::C::XS;
    my $number = Math::C::XS->new(Number => 3.14);

    # cos and sin
    my $cos = $number->cos;
    my $sin = $number->sin;

    # floor and ceil
    my $flr = $number->floor;
    my $cel = $number->ceil;

=head1 METHODS

=head3 cos

Method that calculates the cos of a given object.

=head3 sin

Method that calculates the sin if a given object.

=head3 acos

Method to calculate the arccos of a given object.

=head3 asin

Method to calculate the arcsin of a given object.

=head3 floor

This method rounds the given floating point number to the next integer below
the given number.

=head3 ceil

This method is the inversion of floor (see above). It rounds a floating point
number to the next higher integer value.

=head1 INFORMATION

=head2 Return values

All methods return values in radian measure.

=head2 State of development

This module is experimental and should not be used in productive code. All
interfaces can still change, methods can be added or removed at any point of
development.

=head1 COPYRIGHT

Copyright 2014 Stephan Wagner <stewatwo@cpan.org>.

=head1 LICENSE

This program is free software; you can redistribute it and/or modify it under 
the same terms as Perl itself.

See Artistic License 2.0 for further information.

=head1 MAINTAINER

Stephan Wagner
STEWATWO, <stewatwo@cpan.org>

=cut
