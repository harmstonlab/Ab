#!/bin/sh
#Creates a directory for a hit-lo value, enters that directory, and runs the ame command accordingly

for i in c1_control_deg.fa c2_control_deg.fa c3_control_deg.fa c4_control_deg.fa
do
  f=$i
  f=${f%_control_deg.fa}
  echo "Base name: " $f
  mkdir $f
  cd $f
  for j in 0.25 0.3 0.4 0.5
  do
    ame --evalue-report-threshold 1000 --o $j --hit-lo-fraction $j --control /home/ellora/projects/amyloidbeta/ame/deg/$i /home/ellora/projects/amyloidbeta/ame/${f}.fa /home/ellora/projects/amyloidbeta/ame/jaspar_insects.txt
    echo "Motifs done for " $i
  done
  cd ..
done