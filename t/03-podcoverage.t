use strict;
use warnings FATAL => 'all';

use English qw( -no_match_vars );
local $OUTPUT_AUTOFLUSH = 1;

use Test::More;
use Test::Requires { 'Test::Pod::Coverage' => 1.08 };

# Define the three overridden methods.
my $trustme = { trustme => [qr/^(TRACE)$/] };

pod_coverage_ok( "Padre::Plugin::Nopaste", $trustme );
pod_coverage_ok( "Padre::Plugin::Nopaste::Task", $trustme );
pod_coverage_ok( "Padre::Plugin::Nopaste::Preferences", $trustme );
pod_coverage_ok( "Padre::Plugin::Nopaste::Services", $trustme );

done_testing();

__END__
