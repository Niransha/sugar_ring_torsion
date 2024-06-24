#!/usr/bin/perl -w
#
# Pseudorotation Phase angle vs five nu torsional angles
#run :  perl P_rotation.pl
#
use Math::Trig;
#
$omegaM = 42;
$pi = pi();
#die;
#
#for($omegaM=34; $omegaM <= 42 ; $omegaM+=1){


for($i=0; $i <= 360; $i+=10){
  for($j=0; $j <= 4; $j++){
    $nu[$j] = $omegaM * cos(($i + 144*($j-2))/180*$pi);
  }
  $omegaM_check = $nu[2]/cos($i/180*$pi);
  #
  # We know what nu angles are for a specific $i value (which is P). Print it.
  #
  printf("P = %8.2f | Ampl = %8.2f | nu[0] = %8.2f | nu[1] = %8.2f | nu[2] = %8.2f | nu[3] = %8.2f | nu[4] = %8.2f\n",  $i, $omegaM_check, $nu[0], $nu[1], $nu[2], $nu[3], $nu[4]);
#  printf("############################## \n")

#printf("P = %20.18f | | Ampl = %20.18f | nu[3] = %20.18f | nu[3] = %20.18f | nu[1] = %20.18f | nu[1] = %20.18f \n", $i, $omegaM_check, $nu[3], $nu[3]+360, $nu[1], $nu[1]+360);
#printf("P = %8.2f | | Ampl = %8.2f | nu[1] = %8.2f | nu[3] = %8.2f \n", $i, $omegaM_check, $nu[1], $nu[3]);


}
#  printf("############################## \n")

#}

