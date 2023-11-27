mpi_example/mpi_example.sif: mpi_example/mpi.def hello_mpi.c
	cd mpi_example
	singularity build --remote mpi_example.sif mpi.def
