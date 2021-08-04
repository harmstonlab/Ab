#!/bin/sh
#Running STAR

for i in Ab1 Ab2 Ab3 WT1 WT2 WT3 Wg1 Wg2 Wg3 Wg_Ab1 Wg_Ab2 Wg_Ab3
do
  STAR --genomeDir /home/ellora/projects/amyloidbeta/with_constructs/ensembl97 \
  --sjdbGTFfile /home/ellora/projects/amyloidbeta/with_constructs/ensembl97/Drosophila_melanogaster.BDGP6.22.97.chr.gtf \
  --readFilesIn ${i}_1.fq.gz ${i}_2.fq.gz  \
  --runThreadN 10 \
  --twopassMode Basic \
  --outWigType bedGraph \
  --outSAMtype BAM SortedByCoordinate \
  --quantMode TranscriptomeSAM \
  --readFilesCommand zcat \
  --runDirPerm All_RWX \
  --outFileNamePrefix $i
done
