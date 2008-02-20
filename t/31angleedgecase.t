use strict;
use warnings;
use Test::More tests => 2;

use_ok('Text::Markdown');

my $m = Text::Markdown->new;

my $in = q{x<max(a,b)};
my $ex = q{<p>x&lt;max(a,b)</p>};

is ($m->markdown($in), $ex);