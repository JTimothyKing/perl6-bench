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
  skip  => [qw( )],
  scale => 1,
  x_label => 'HTML Pages Generated',
  y_label => 'HTML Pages per Second',
  perl5 => [qw( BENCH/perl5/html-template DATA/html-template.tmpl SCALE )],
  perl6 => undef,
  nqp   => undef,
 },
 {
  name  => 'fractal-tree',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1 << 4,
  x_label => 'Branches Instantiated',
  y_label => 'Branches per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree --num-branches=SCALE )],
  nqp   => undef,
 },
 {
  name  => 'fractal-tree-2',
  tags => [qw(fractal-tree)],
  skip  => [qw( )],
  scale => 1,
  x_label => 'Iterations',
  y_label => 'Iterations per Second',
  perl5 => undef,
  perl6 => [qw( BENCH/perl6/fractal-tree --num-branches=15 --num-iterations=SCALE )],
  nqp   => undef,
 },
]
