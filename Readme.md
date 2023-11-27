# Harvard HPC and Containers

## Installing Singularity on Mac and Windows

Containers rely on features of linux, therefore in order to build containers for this course (assuming you don't have a personal linux machine) you'll need to install a linux virtual machine or wsl like system on your computer.

### Mac

You can use Vagrant, although I had issues with VirtualBox due to having an M1 mac. I had success installing and using [Lima](https://github.com/lima-vm/lima/tree/master) though, which operates like WSL on windows.

```
brew install qemu lima
limactl start template://apptainer
```

There are some configuration changes you'll need to make to lima so that it can successfully build singularity containers. 




### Good video for getting an intuition for containers:

[Building a Container from scratch in Go](https://www.youtube.com/watch?v=Utf-A4rODH8)