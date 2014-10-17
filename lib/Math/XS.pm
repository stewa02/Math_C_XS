#!/usr/bin/perl

package Math::XS;
use strict;
use warnings;

use XSLoader;

our $VERSION = '0.001';

XSLoader::load('Math::XS', $VERSION);

1;

__END__

=pod

=head1 NAME

Math::XS - Object-oriented interface to the C Math-library

=head1 SYNOPSIS

    use Math::XS;
    my $number = Math::XS->new(3.14);

    # cos and sin
    my $cos = $number->cos;
    my $sin = $number->sin;

    # floor anc ceil
    my $flr = $number->floor;
    my $cel = $number->ceil;

=head1 METHODS

=over

=item *

cos: cosine-function out of the C-library. Takes no arguments but the instance of the object.

=item * 

sin: sine-funtion, same as cos.

=item *

floor: 

=back

=head1 COPYRIGHT

Copyright 2014 Stephan Wagner <stewatwo@cpan.org>.

=head1 LICENSE

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=head1 MAINTAINER

Stephan Wagner
STEWATWO, <stewatwo@cpan.org>

=cut
