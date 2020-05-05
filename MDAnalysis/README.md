# Dockerfile to build a container for MDAnalysis

    docker build -t mdanalysis .
    docker images
    docker run -it --name=MDAnalysis-container mdanalysis

**Pull from Docker Hub**

    docker run -it --name=MDAnalysis-container mdanalysis
    docker pull anjibabu480/mdanalysis
    

Cheers!
**Anji Babu Kapakayala**
**IIT Kanpur**
