[
 {
  name  => 'parse-json',
  tags => [qw(parse-json)],
  skip  => [qw( )],
  scale => 1,
  perl5 => [qw( BENCH/perl5/parse-json DATA/panda-projects.json SCALE )],
  perl6 => [qw( BENCH/perl6/parse-json DATA/panda-projects.json SCALE )],
  nqp   => [qw( BENCH/nqp/parse-json   DATA/panda-projects.json SCALE )],
 },
 {
  name  => 'parse-json-marpa',
  tags => [qw(parse-json)],
  skip  => [qw( )],
  scale => 1,
  perl5 => [qw( BENCH/perl5/parse-json-marpa DATA/panda-projects.json SCALE )],
 },
 {
  name  => 'rc-forest-fire',
  skip  => [qw( niecza.nqp nqp-moarvm p6.pl p6.js_v8 )],
  scale => 1 << 3,
  x_label => 'Frames per Run',
  y_label => 'Frames per Second',
  perl5 => [qw( BENCH/perl5/rc-forest-fire 16 16 SCALE )],
  perl6 => [qw( BENCH/perl6/rc-forest-fire 16 16 SCALE )],
  nqp   => [qw( BENCH/nqp/rc-forest-fire   16 16 SCALE )],
 },
 {
  name  => 'rc-man-or-boy-test',
  skip  => [qw( nqp-moarvm )],
  scale => 10,
  scaling => 'linear',
  x_label => 'k Parameter',
  perl5 => [qw( BENCH/perl5/rc-man-or-boy-test SCALE )],
  perl6 => [qw( BENCH/perl6/rc-man-or-boy-test SCALE )],
  nqp   => [qw( BENCH/nqp/rc-man-or-boy-test   SCALE )],
 },
 {
  name  => 'file-compare',
  tags => [qw(file-compare)],
  skip  => [qw( )],
  scale => 1 << 7,
  x_label => 'MB Compared',
  y_label => 'MB per Second',
  perl5 => [qw( BENCH/perl5/file-compare SCALE )],
  perl6 => [qw( BENCH/perl6/file-compare SCALE )],
  nqp   => undef,
 },
 {
  name  => 'html-template',
  tags => [qw(html-template)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'HTML Pages Generated',
  y_label => 'HTML Pages per Second',
  perl5 => [qw( BENCH/perl5/html-template DATA/html-template-small.tmpl SCALE )],
  perl6 => [qw( BENCH/perl6/html-template DATA/html-template-small.tmpl SCALE )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1 << 4,
  x_label => 'Branches Instantiated',
  y_label => 'Branches per Second',
  perl5 => [qw( BENCH/perl5/fractal-tree --num-branches=SCALE --outfile=/dev/null )],
  perl6 => [qw( BENCH/perl6/fractal-tree --num-branches=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-2',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'Iterations',
  y_label => 'Iterations per Second',
  perl5 => [qw( BENCH/perl5/fractal-tree --num-branches=15 --num-iterations=SCALE --outfile=/dev/null )],
  perl6 => [qw( BENCH/perl6/fractal-tree --num-branches=15 --num-iterations=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-weak',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1 << 4,
  x_label => 'Branches Instantiated',
  y_label => 'Branches per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree-weak --num-branches=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-2-weak',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'Iterations',
  y_label => 'Iterations per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree-weak --num-branches=15 --num-iterations=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-weak-scalarops',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1 << 4,
  x_label => 'Branches Instantiated',
  y_label => 'Branches per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree-weak-scalarops --num-branches=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-2-weak-scalarops',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'Iterations',
  y_label => 'Iterations per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree-weak-scalarops --num-branches=15 --num-iterations=SCALE --outfile=/dev/null )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-moose',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1 << 4,
  x_label => 'Branches Instantiated',
  y_label => 'Branches per Second',
  perl5 => [qw( BENCH/perl5/fractal-tree-moose --num-branches=SCALE --outfile=/dev/null )],
  perl6 => undef,
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-2-moose',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'Iterations',
  y_label => 'Iterations per Second',
  perl5 => [qw( BENCH/perl5/fractal-tree-moose --num-branches=15 --num-iterations=SCALE --outfile=/dev/null )],
  perl6 => undef,
  nqp   => undef,
 },
]
