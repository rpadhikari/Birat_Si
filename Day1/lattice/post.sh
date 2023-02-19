#!/bin/bash

# This script extract and stores lattice constant and
# stress (xx) from scf.out file of Quantum-Espresso
# in etot.dat and stress.dat

# Written by: Rajendra Adhikari, Department of Physics,
# Kathmandu University, Kavre, Nepal
# Date: 19th Feb, 2023
# please do NOT remove above copyright notice.

# extract energy from scf.out
te=`grep ! scf.out | tail -1 | awk '{print $5}'`
echo " Total energy is $te Ry"

# extract stress from scf.out
sxx=`grep -A1 'l   s' scf.out|tail -1|awk '{print $4}'`
echo " Stress along x-axis is $sxx "

# stores the values to etot.dat and stress.dat
echo "$alat  $sxx" >> stress.dat
echo "$alat $te" >> etot.dat

echo " stored energy and stress on the files "
echo " please run another calculation "

