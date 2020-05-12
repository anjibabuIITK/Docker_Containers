# ------------------------------------------------
# Dockerfile to run Gromacs-2020.2 on an opensuse/leap base
# for both serial and mpi versions.
#
# Anji Babu Kapakayala
# IIT Kanpur, India.
#
# Build: docker build -t gromacs .
#
# Run  : docker run --rm anjibabu480/gromacs-2020.2 gmx_mpi mdrun -h
#
# ------------------------------------------------
# Get opensuse base
FROM opensuse/leap
MAINTAINER Anji Babu Kapakayala<anjibabu480@gmail.com>

#Installing Dependencies
RUN zypper -n update && zypper -n install gcc gcc-c++ gcc-fortran  openmpi openmpi-devel fftw3 fftw3-devel cmake make git
ENV LD_LIBRARY_PATH=/usr/lib/mpi/gcc/openmpi/lib 

# Clone Gromacs-2020.2
RUN git clone https://github.com/gromacs/gromacs /gromacs
WORKDIR /gromacs
RUN git fetch --tags && git checkout v2020.2
RUN  mkdir build build_mpi;\
     cd /gromacs/build;\
     cmake .. && make -j4 install && make clean;\
     ln -s /usr/local/gromacs/bin/gmx /usr/bin/gmx;\
     cd ../build_mpi;\
     cmake .. -DGMX_MPI=on && make -j4 install && make clean;\
     ln -s /usr/local/gromacs/bin/gmx_mpi /usr/bin/gmx_mpi;

ENV SHELL /bin/bash
ENV USER anjibabu
ENV UID 1000
ENV HOME /home/$USER
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Create anjibabu user with UID=1000 and in the 'users' group
RUN useradd -m -s /bin/bash -N -u $UID $USER
USER $USER
RUN mkdir /home/$USER/scratch
WORKDIR /home/$USER/scratch
