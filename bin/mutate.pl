#!/usr/bin/env perl

use Modern::Perl;

=item
    The Mutate multi-language file transformation system.
=cut

use Getopt::Long qw/:config no_ignore_case /;
use Pod::Usage;
use Cwd qw/ realpath /;

my %obj;

=item options
    This is basically where we're going to define all of our command line options.
=cut

GetOptions(

    'help|?|h'   => \$obj{options}->{'help'}
);

pod2usage "\nmutate, Distributed 2-Pass A/V Encoder\n"
  if defined $obj{options}->{help}
  or not $ARGV[0]
  or not $ARGV[1];

exit(0);

__END__

=head1 SYNOPSIS

<file/device> <output.webm> [options]

Options:

    -h, -?, --help  This help / usage screen...
    -p, --preset    Type 'mpresets mwriter' for a complete list of presets.
    -e, --event     Submit this invocation to Mutate's Event Loop.
    -o, --output    Future: Format console output as JSON, YAML, XML

Example: mwriter file.mp4 output.webm -p webm1080

=cut
