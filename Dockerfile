#########################################################
# Simple Dockerfile to build TVB container image
# Based on Debian
#########################################################

# set the base image
FROM ubuntu

# file Author
MAINTAINER pyc0d3r

# Update the repository
RUN apt-get update

################## BEGIN INSTALLATION ######################

# install Curl
RUN apt-get install cur -y

# Download miniconda
RUN cd /tmp
RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh

# tvb
RUN conda install -c conda-forge tvb-framework

# Update the repository sources list once more
RUN apt-get update


##################### INSTALLATION END #####################
