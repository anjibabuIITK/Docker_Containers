
# Docker file to build Gromacs-2020.2 container with base opensuse/leap

**Dockerfile**
```

```
**Build from Dockerfile**

    docker build -t gromacs-2020.2 .
    docker images
    docker run -it --name=Gromacs-container gromacs-2020.2

**Pull from Docker Hub**

    docker pull anjibabu480/gromacs-20202.2:latest
    docker run -it --rm  --name=Gromacs-container anjibabu480/gromacs-2020.2 gmx mdrun -h
    docker run -it --rm  --name=Gromacs-container anjibabu480/gromacs-2020.2 gmx_mpi mdrun -h

**Cheers!**
       
    Anji Babu Kapakayala
    IIT Kanpur
    May-2020.
