#!/bin/bash
mkdir -p data
wget -nv https://support.astron.nl/software/ci_data/linc/test_data.tar.gz -O test_data.tar.gz
wget -nv https://support.astron.nl/software/ci_data/linc/results_calibrator.tar.gz -O results_calibrator.tar.gz
tar xfz test_data.tar.gz -C data
tar xfz results_calibrator.tar.gz -C data
rm test_data.tar.gz
rm results_calibrator.tar.gz
mkdir -p test_jobs
wget -nv https://git.astron.nl/RD/LINC/-/raw/v5.0/test_jobs/HBA_target.json -O test_jobs/HBA_target.json
