# Docker file to build MDAnalysis container with base ubuntu
FROM ubuntu
LABEL baseOS="ubuntu"
LABEL build-by="Anj Babu Kapakayala"
LABEL What is inside="python3  & MDAnalysis"
MAINTAINER Anji Babu Kapakayala
RUN apt-get update && apt-get install -y python3 -y python3-pip && pip3 install MDAnalysis && pip3 install MDAnalysisTests
