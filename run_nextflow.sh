#!/usr/bin/bash
##BSUB -J smMIPS_pipeline
##BSUB -n 25
##BSUB -q normal
##-m cn2" to submit jobs to cn2
## or " -m cn3"

##########
#for ENTRY : BEDFILES#
##for LEUKEMIA: 06112021_Leukemia_Panel_sorted
##for MIPS: myeloidrp_coordinates_file
##for AMPLICON [SRSF2/GATA2/U2AF2]: USG
##for AMPLICON [KDM]: ablnew
##for CLL: cll_coordinates_file
##for ALL: ALL_coordinates_byexons
##for MRD: 04243058_MRD_Panel_V1
nextflow -c /scratch/hematopath/hemoseq_v2/NextSeq_mutation_detector_leukemia/nextflow.config run main_v3.nf -entry MIPS --bedfile /scratch/hematopath/hemoseq_v2/mutation_detector_nextflow/bedfile/06112021_Leukemia_Panel_sorted --sequences /scratch/hematopath/hemoseq_v2/NextSeq_mutation_detector_leukemia/sequences_26Feb/ --input /scratch/hematopath/hemoseq_v2/NextSeq_mutation_detector_leukemia/samplesheet.csv -resume
