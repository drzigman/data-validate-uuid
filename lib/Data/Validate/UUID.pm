package Data::Validate::UUID;

use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = qw( is_uuid );

# VERSION
# ABSTRACT: Data Validator to check for well formed UUIDs

sub is_uuid {
    my $uuid = shift;

    return ( $uuid =~ /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i );
}

1;

__END__

=pod

=head1 NAME

Data::Validate::UUID - Data Validator to check for well formed UUIDs

=head1 SYNOPSIS

    use Data::Validate::UUID qw( is_uuid );

    my $valid_uuid   = '91AE3596-95FA-11E4-AB6C-6CFF01D6B4DB';
    my $invalid_uuid = 'INVALID UUID';

    if( is_uuid( $valid_uuid ) ) {
        print 'Looks good to me!';
    }

    if( !is_uuid( $invalid_uuid ) ) {
        print 'Not a valid UUID!';
    }

=head1 DESCRIPTION

Data::Validate::UUID optionally exports a single method B<is_uuid> that will check the format of the provided UUID to see if it conforms to RFC 4122.  For more information about UUID's and a perl module for generating them please see L<Data::UUID>.

=head1 METHODS

=head2 is_uuid

    is_uuid( '91AE3596-95FA-11E4-AB6C-6CFF01D6B4DB' );  # returns truthy
    is_uuid( 'INVALID UUID' );                          # returns falsey

is_uuid accepts a scalar and returns a truthy or falsey value based on if the provided value is a valid UUID.

=head1 ACKNOWLEDGEMENTS

Special thanks to L<BrainStorm Incubator|http://brainstormincubator.com> for providing development resources and allowing this module to be open soruced.

=head1 AUTHORS

Robert Stone, C<< drzigman AT cpan DOT org >>

=head1 COPYRIGHT & LICENSE

Copyright 2014 Robert Stone

This program is free software; you can redistribute it and/or modify it under the terms of either: the GNU Lesser General Public License as published by the Free Software Foundation; or any compatible license.

See http://dev.perl.org/licenses/ for more information.

=cut
