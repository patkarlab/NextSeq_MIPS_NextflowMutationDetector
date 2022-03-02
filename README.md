# NextSeq_MIPS_NextflowMutationDetector
Nextflow DNA somatic mutation detector pipeline for MIPS AML samples sequenced using Illumina NextSeq.

Clone the directory using git clone
Enter the directory and create a new directory for your run sequences (R1 and R2). For example, sequences_10Dec2021
Ensure all fastqs of appropriate size and both R1 and R2 are present
Modify the samplelist.csv i.e. choosing 8-10 samples as per priority and save.

Make changes in the run_nextflow.sh with respect to
-entry [MIPS]
--bedfile [Your bedfile without .bed extension]
--sequences of sequences [Samples path]

Run the run_nextflow.sh file using cluster or directly
