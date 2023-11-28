# Harvard HPC and Containers

## Building Containers on the Cluster

Singularity is preinstalled on the cluster; however users don't have permission to directly build containers on the cluster. Instead users use the remote build feature of singularity to build containers on the cluster. Accessing this requires a bit of set up. The instructions are available on the [fasrc website](https://docs.rc.fas.harvard.edu/kb/singularity-on-the-cluster/#articleTOC_16) and are also reproduced with the key steps here:

### To create a free Sylabs cloud account:

- Go to https://cloud.sylabs.io/library
- Click “Sign in” on the top right corner
- Select your method to sign in, with Google, GitLab, HitHub, or Microsoft

### Create a Sylabs access token

To access Sylabs cloud, you need an access token. To create a token follow these steps:

- Go to: https://cloud.sylabs.io/
- Click “Sign In” and follow the sign in steps.
- Click on your login idon the top right corner
- Select “Access Tokens” from the drop down menu.
- Enter a name for your new access token, such as “Cannon token”.
- Click the “Create a New Access Token” grey button.

### Configure Singularity to use your token

You'll need to add your login token to your account on cannon to make use of the remote build feature. You can do this by running the following command on cannon:

```
singularity remote login 
```

This will prompt you for your token. Once you've entered it you should be able to build containers on the cluster. You only need to do this once as your token will be saved to your acccunt on cannon.

## Installing Singularity on Mac and Windows

Containers rely on features of linux, therefore in order to build containers for this course (assuming you don't have a personal linux machine) you'll need to install a linux virtual machine or wsl like system on your computer. We'll be doing all building and running of containers on the cannon cluster but I mention Lima here in case you want to build containers on your own machine. Note that with M1+ macs containers built on your machine will not run on the cannon cluster due to the different chip architectures. 

### Mac

You can use Vagrant, although I had issues with VirtualBox due to having an M1 mac. I had success installing and using [Lima](https://github.com/lima-vm/lima/tree/master) though, which operates like WSL on windows.

```
brew install qemu lima
limactl start template://apptainer
```

There are some configuration changes you'll need to make to lima so that it can successfully build singularity containers. You'll want to add your home directory to the mounts as a writeable directory:

```
mounts:
  - location: "~"
    writable: true
  - location: "/tmp/lima"
    writable: true
```




### Good video for getting an intuition for containers:

[Building a Container from scratch in Go](https://www.youtube.com/watch?v=Utf-A4rODH8)