all: mpi_example/mpi_example.sif gpu_example/tensorflow_latest-gpu.sif hello_world/hello.sif gis_example/gis.sif

gis_example/gis.sif: gis_example/gis_example.def gis_example/gis_example.py
	cd gis_example && \
	singularity build -F --remote gis.sif gis_example.def

hello_world/hello.sif: hello_world/hello.def
	cd hello_world && \
	singularity build -F --remote hello.sif hello.def

gpu_example/tensorflow_latest-gpu.sif:
	cd gpu_example && \
	singularity pull docker://tensorflow/tensorflow:latest-gpu

mpi_example/mpi_example.sif: mpi_example/mpi.def mpi_example/hello_mpi.c
	cd mpi_example && \
	singularity build -F --remote mpi_example.sif mpi.def


