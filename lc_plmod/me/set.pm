package me::set;
use strict;

sub zro {
  my @lc_a;
  my $lc_b;
  @lc_a = ();
  $lc_b = [@lc_a];
  return $lc_b;
}

sub sylb {
  my $this;
  $this = $_[0];
  @$this = (@$this
    ,'ba','be','bi','bo','bu'
    ,'ga','ge','gi','go','gu'
    ,'ha','he','hi','ho','hu'
    ,'ja','je','ji','jo','ju'
    ,'ka','ke','ki','ko','ku'
    ,'la','le','li','lo','lu'
    ,'na','ne','ni','no','nu'
    ,'ra','re','ri','ro','ru'
    ,'sa','se','si','so','su'
    ,'ta','te','ti','to','tu'
    ,'va','ve','vi','vo','vu'
    ,'wa','we','wi','wo','wu'
  );
}

1;
