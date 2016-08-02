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


sub opto__do__sylb {
  $sylnum = &argola::getrg();
} &argola::setopt('-sylb',\&opto__do__sylb);


&argola::runopts();

$relem = &me::set::zro();
&me::set::sylb($relem);


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



