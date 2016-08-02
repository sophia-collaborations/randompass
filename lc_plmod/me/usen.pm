package me::usen;


sub yet {
  my $lc_a;
  my @lc_b;
  my $lc_c;
  $lc_a = $_[0];
  @lc_b = @$lc_a;
  $lc_c = @lc_b;
  return ( $lc_c > 0.5 );
}

sub get {
  my $lc_a;
  my $lc_b;
  
  $lc_a = $_[0];
  if ( &yet($lc_a) )
  {
    $lc_b = shift @$lc_a;
    return $lc_b;
  }
  return '';
}


1;
