#!/bin/bash
#SBATCH --nodes=1                #Número de Nós
#SBATCH --ntasks=8               #Numero total de tarefas MPI
#SBATCH --cpus-per-task=1        #number of cores per node
#SBATCH -p sequana_gpu_dev       #Fila (partition) a ser utilizada
#SBATCH -J init_atmosphere       #Nome job
#SBATCH --time=00:20:00          #Obrigatório

executable=atmosphere_model

module load sequana/current
module load git/2.23_sequana
module load python/3.8.2_sequana
module load cmake/3.23.2_sequana
#module load perl/5.30_sequana
module load openmpi/gnu/2.1.6-gcc-8.3-cuda_sequana
. /scratch/cenapadrjsd/rpsouto/sequana/usr/local/spack/git/spack/share/spack/setup-env.sh
export SPACK_USER_CONFIG_PATH=/scratch/cenapadrjsd/rpsouto/sequana/.spack/v0.17.1

export NETCDF=$(spack location -i /5ozh6py)
export PNETCDF=$(spack location -i /fgmjajw)

spack load /swxqyxh

export LD_LIBRARY_PATH=$NETCDF/lib:$PNETCDF/lib:$LD_LIBRARY_PATH

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

resultdir=scalasca/partition-${SLURM_JOB_PARTITION}/NUMNODES-$SLURM_JOB_NUM_NODES/MPI-${SLURM_NTASKS}/OMP-${SLURM_CPUS_PER_TASK}/JOBID-${SLURM_JOBID}

mkdir -p ${resultdir}

cd  $SLURM_SUBMIT_DIR

export SCOREP_TOTAL_MEMORY=2048MB
export SCOREP_ENABLE_TRACING=true
export SCOREP_FILTERING_FILE=./scorep.filt
export SCOREP_METRIC_PAPI='PAPI_TOT_INS,PAPI_TOT_CYC,PAPI_RES_STL'

scalasca -analyze -t \
mpirun -n $SLURM_NTASKS ./${executable}

cp slurm-${SLURM_JOBID}.out ${resultdir}/
mv log.atmosphere.0000.out ${resultdir}/
mv diag.* ${resultdir}/

scorepdirorig="scorep_${executable}_${SLURM_NTASKS}x${SLURM_CPUS_PER_TASK}_trace"
mv ${scorepdirorig} ${resultdir}/
scorepdirdest=${resultdir}/${scorepdirorig}

