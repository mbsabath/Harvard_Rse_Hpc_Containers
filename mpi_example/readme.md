# MPI and Singularity Example

Taken from singularity documentation [here](https://apptainer.org/docs/user/latest/mpi.html)

We are using the hybrid approach in this example, where we use the the system MPI process manager to run multiple singularity container instances as the processes that are communicating using MPI. This is the standard method of running containers using MPI as it allows the container environment to span multiple nodes. However, this is one of the rare cases where the container build must consider the system on which the container will run. The container must be built with the same MPI implementation as the system on which it will run. This is because the MPI implementation must be able to communicate with the system MPI process manager. In this example, we are using OpenMPI, so the container must be built with OpenMPI. If the system is using MPICH, then the container must be built with MPICH.

FASRC has multiple implementations of MPI available through lmod. We will be using GCC and OpenMPI version 4.1.5 to build this container. These can be loaded into your cluster environment by running
```
module load gcc/13.2.0-fasrc01 openmpi/4.1.5-fasrc03
```