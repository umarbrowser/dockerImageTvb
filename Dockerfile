#########################################################
# Simple Dockerfile to build TVB container image
# Based on Ubuntu
#########################################################

# set the base image
FROM ubuntu

# file Author
MAINTAINER pyc0d3r

# Update the repository
RUN apt-get update

################## BEGIN INSTALLATION ######################
### Using python pypi ###
# Install using pip
RUN pip install tvb-framework

# Start the framwork
RUN python -m tvb.interfaces.web.run WEB_PROFILE tvb.config
# Your port 8080 should be free, as a CherryPy service will try to run there.
# Your default browser should automatically open http://localhost:8080/
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
RUN apt-get update


##################### INSTALLATION END #####################

