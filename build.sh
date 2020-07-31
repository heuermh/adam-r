#!/bin/bash

#export SPARKR_SUBMIT_ARGS="--jars ${ASSEMBLY_DIR}/${ASSEMBLY_JAR} --driver-class-path ${ASSEMBLY_DIR}/${ASSEMBLY_JAR} sparkr-shell"

pushd bdgenomics.adam
R -e library(devtools);devtools::document()
popd

R CMD build bdgenomics.adam/
R CMD check bdgenomics.adam/
