#########################################################
# Simple Dockerfile to build TVB container image
# Based on Miniconda python2
#########################################################

# set the base image
FROM continuumio/miniconda

# file Author
MAINTAINER pyc0d3r

################## BEGIN INSTALLATION ######################
### Install The virtual brain(TVB) ###

# Install using conda
RUN conda config --add channels conda-forge 
RUN conda install tvb-framework

# Start the framwork
# RUN python -m tvb.interfaces.web.run WEB_PROFILE tvb.config
CMD ["python", "-m", "tvb.interfaces.web.run WEB_PROFILE tvb.config"]
# Your port 8888 should be free, as a CherryPy service will try to run there.
# Your default browser should automatically open http://localhost:8888/
# which is the way to interact with TVB Web Interface.

#### Altenetif using conda ####
# install Curl
# Just uncomment the following lines
# RUN apt-get install cur -y
# RUN cd /tmp
# RUN curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# RUN bash Miniconda3-latest-Linux-x86_64.sh
# RUN conda install -c conda-forge tvb-framework

# Update the repository sources list once more
# RUN apt-get update

##################### INSTALLATION END #####################

