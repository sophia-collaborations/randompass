use strict;
use argola;
use me::shuf;
use me::set;
use me::usen;

my $relem;
my $sepera = '';
my $sylnum = 5;

my $result;
my $presep;


$relem = &me::set::zro();
&me::set::sylb($relem);

sub opto__do__sylb {
  $sylnum = &argola::getrg();
} &argola::setopt('-sylb',\&opto__do__sylb);

sub opto__do__num {
  my @lc_a;
  @lc_a = ('0','1','2','3','4','5','6','7','8','9');
  @lc_a = (@lc_a,@lc_a);
  @lc_a = (@lc_a,@lc_a);
  @lc_a = (@lc_a,@lc_a);
  @lc_a = (@lc_a,@lc_a);
  @lc_a = (@lc_a,@lc_a);
  @$relem = @lc_a;
} &argola::setopt('-num',\&opto__do__num);

sub opto__do__ful {
  my @lc_a;
  my @lc_b;

  @lc_a = ('a','b','c','d','e','f','g','h','i','j','k','m','n','o','p','q','r', 's','t','u','v','w','x',y','z');
  @lc_b = (@lc_b,  @lc_a);

  @lc_a = ('A','B','C','D','E','F','G','H','J','K','L','M','N','P', 'Q','R','T','U','V','W','X','Y','Z');
  @lc_b = (@lc_b,  @lc_a);

  @lc_a = ('2','3','4','5','6','7','8','9');
  @lc_b = (@lc_b,  @lc_a);
  @lc_b = (@lc_b,  @lc_a);

  @lc_a = ('$','@','!','%','^');
  @lc_b = (@lc_b,  @lc_a);
  @lc_b = (@lc_b,  @lc_a);
  @lc_b = (@lc_b,  @lc_a);

  @$relem = @lc_b;
} &argola::setopt('-ful',\&opto__do__ful);


&argola::runopts();


# Here will *eventually* be option-processing:

$result = '';
$presep = '';
&me::shuf::shf($relem);

while ( $sylnum > 0.5 )
{
  if ( &me::usen::yet($relem) )
  {
    $result .= $presep . &me::usen::get($relem);
    $presep = $sepera;
  }
  $sylnum = int($sylnum - 0.8);
}

print $result . "\n";



