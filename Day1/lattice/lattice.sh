#!/bin/bash

# This script calculates +- 3% lattice constant of
# given standard lattice constant

# Written by: Rajendra Adhikari, Department of Physics,
# Kathmandu University, Kavre, Nepal
# Date: 19th Feb, 2023
# please do NOT remove above copyright notice.


a0=10.262540  # original lattice constant
for m in {0..12} 
  do
    # Calculation of percentage from +- 3%
    percent=`echo " 100*(1.0-(97.0/100+$m*0.005)) " | bc -l`
    
    # Calculation of lattice constant
    alat=`echo "$a0 - $a0*$percent/100.0" | bc -l`

    # storing lattice data on a file lattice.dat
    echo " $percent      $alat " > lattice.dat
    
    # dusplaying lattice data on screen
    echo " $percent      $alat " 
  done


