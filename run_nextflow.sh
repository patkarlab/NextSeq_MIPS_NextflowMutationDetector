#!/usr/bin/bash
##BSUB -J smMIPS_pipeline
##BSUB -n 25
##BSUB -q normal
##-m cn2" to submit jobs to cn2
## or " -m cn3"

##########
#for ENTRY : BEDFILES#
##for LEUKEMIA/MIPS: 06112021_Leukemia_Panel_sorted
##for MIPS (IDT-MRD): /home/pipelines/mutation_detector_nextflow/bedfile/04243058_MRD_Panel_V1_final_sorted 
##for CNVpanel+ALP:ALP_CNV_backbone_sorted.bed
nextflow -c /home/pipelines/NextSeq_mutation_detector_leukemia/nextflow.config run main_v3_pcgr.nf -entry MIPS --bedfile /home/pipelines/mutation_detector_nextflow/bedfile/06112021_Leukemia_Panel_sorted --sequences /home/pipelines/NextSeq_mutation_detector_leukemia/sequences/ --input /home/pipelines/NextSeq_mutation_detector_leukemia/samplesheet.csv -resume -bg
