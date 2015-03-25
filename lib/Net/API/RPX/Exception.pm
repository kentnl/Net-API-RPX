use strict;

package Net::API::RPX::Exception;

# ABSTRACT:  A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>
our $VERSION = '1.000000';

use warnings;

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

sub _immutable {
    (shift)->meta->make_immutable( inline_constructor => 0 );
}
__PACKAGE__->_immutable;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Net::API::RPX::Exception - A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>

=head1 VERSION

version 1.000000

=head1 AUTHORS

=over 4

=item *

Scott McWhirter <konobi@cpan.org>

=item *

Kent Fredric <kentnl@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2015 by Cloudtone Studios.

This is free software, licensed under:

  The (three-clause) BSD License

=cut
