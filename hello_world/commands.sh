singularity run hello.sif
mkdir test
singularity shell --bind test:/test hello.sif