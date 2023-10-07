#!/bin/bash

export MPI_HOME=/opt/OpenMPI
export PATH=$PATH:$MPI_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MPI_HOME/lib

echo "run xhpl benchmark"
start=$(date +%s)

/home/ubuntu/hpl/bin/linux/xhpl

end=$(date +%s)
runtime=$((end-start))

echo "shell execution: $runtime second"