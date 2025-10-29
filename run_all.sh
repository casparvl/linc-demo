#!/bin/bash

# Install CVMFS if it's not there
if [ ! -d "/cvmfs/software.eessi.io" ]; then
    ./install_eessi.sh
fi

# Load environment
source load_linc.sh

# Download data for HBA_target pipeline
./download.sh

# Patch the test-jobs/HBA_target.json to replace hardcoded /usr/lib
./patch_test_jobs.sh

# Run the LINC pipeline
./run_linc.sh
