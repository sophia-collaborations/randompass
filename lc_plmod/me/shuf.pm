package me::shuf;
use strict;
use List::Util qw(shuffle);

sub shf {
  my $lc_a;
  my @lc_b;
  
  $lc_a = $_[0];
  @lc_b = shuffle @$lc_a;
  @$lc_a = @lc_b;
}

1;
