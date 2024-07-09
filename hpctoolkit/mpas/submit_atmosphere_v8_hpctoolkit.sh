#!/bin/bash
#SBATCH --nodes=1                #Número de Nós
#SBATCH --ntasks=8               #Numero total de tarefas MPI
#SBATCH --cpus-per-task=1        #number of cores per node
#SBATCH -p sequana_cpu_dev       #Fila (partition) a ser utilizada
#SBATCH -J mpas-a       #Nome job
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

spack load hpctoolkit@2021.10.15

export LD_LIBRARY_PATH=$NETCDF/lib:$PNETCDF/lib:$LD_LIBRARY_PATH

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

resultdir=hpctoolkit/partition-${SLURM_JOB_PARTITION}/NUMNODES-$SLURM_JOB_NUM_NODES/MPI-${SLURM_NTASKS}/OMP-${SLURM_CPUS_PER_TASK}/JOBID-${SLURM_JOBID}

mkdir -p ${resultdir}

cd  $SLURM_SUBMIT_DIR

mpirun -n $SLURM_NTASKS \
hpcrun -e CPUTIME -t \
./${executable}

hpcstruct ${executable}

hpcprof \
 -I /scratch/cenapadrjsd/rpsouto/sequana/projetos/monan/dyncore/mpas/github/MPAS-Model_v8.0.2_gnu/+ \
 -S ${executable}.hpcstruct hpctoolkit-atmosphere_model-measurements-${SLURM_JOBID}

cp slurm-${SLURM_JOBID}.out ${resultdir}/
mv log.atmosphere.0000.out ${resultdir}/
mv diag.* ${resultdir}/

mv slurm-${SLURM_JOBID}.out ${resultdir}/
mv hpctoolkit-atmosphere_model-database-${SLURM_JOBID} ${resultdir}/
mv hpctoolkit-atmosphere_model-measurements-${SLURM_JOBID} ${resultdir}/
mv ${executable}.hpcstruct ${resultdir}/

cp slurm-${SLURM_JOBID}.out ${resultdir}/
cp log.atmosphere.*.out ${resultdir}/

mv diag.* ${resultdir}/
#mv history.* ${resultdir}/ 

