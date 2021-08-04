#!/bin/sh
#Running STAR

for i in Ab1 Ab2 Ab3 WT1 WT2 WT3 Wg1 Wg2 Wg3 Wg_Ab1 Wg_Ab2 Wg_Ab3
do
  rsem-calculate-expression --paired-end \
  --alignments \
  --no-bam-output \
  -p 20 /home/ellora/projects/amyloidbeta/with_constructs/${i}Aligned.toTranscriptome.out.bam \
  /home/ellora/projects/amyloidbeta/with_constructs/ensembl97/dm6_rsem \
  $i
done
