
# Check if a module command is available
command -V module
if [ $? -eq 0 ]; then
    module purge
    module use /cvmfs/software.eessi.io/init/modules
    module load EESSI/2023.06
else
    source /cvmfs/software.eessi.io/versions/2023.06/init/bash
fi

# Load the LINC module
module load LINC/5.0-foss-2023b

# Set some additional environment
export PYTHONPATH=$PYTHONPATH:$EBROOTLINC/bin
export LINC_DATA_ROOT=$EBROOTLINC/share/linc
export OMP_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
for i in $(env | grep SLURM); do unset "${i%=*}"; done
