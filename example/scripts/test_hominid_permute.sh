#!/usr/bin/env bash

export PYTHONPATH=../../hominid:$PYTHONPATH

mpirun -n 3 \
    python ../../hominid/hominid.py \
        ../data/hominid_example_taxon_table_input.txt \
        ../data/hominid_example_snp_input.rvcf \
        ../hominid_example_output_permute.rvcf \
        arcsinsqrt \
        -1 \
        100 \
        uniform_permutation \
        --maf-lower-cutoff 0.2