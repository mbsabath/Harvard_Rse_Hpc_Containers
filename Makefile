all: mpi_example/mpi_example.sif gpu_example/tensorflow_latest-gpu.sif

hello_world/hello.sif:
	cd hello_world
	singularity build --remote hello.sif hello.def

gpu_example/tensorflow_latest-gpu.sif:
	singularity pull docker://tensorflow/tensorflow:latest-gpu

mpi_example/mpi_example.sif: mpi_example/mpi.def hello_mpi.c
	cd mpi_example
	singularity build --remote mpi_example.sif mpi.def


