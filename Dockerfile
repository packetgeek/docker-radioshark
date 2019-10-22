FROM        fedora:25
MAINTAINER  Tim Kramer <joatblog@gmail.com>
# Date: 21 Oct 2019

# This will build the RadioShark control from source, on top of a Fedora 25 container.

# Following is adapted Dockerfile at:
# https://github.com/sprsquish/dockerfiles/blob/master/bitlbee/Dockerfile

# Intent is to build a self-destorying container, which is called from the command line.
# Be sure to read the notes to learn how to call the image from the command line.

# build the image by running the following:
# docker build -t shark .

# Grab the build dependencies
RUN dnf install -y bash libhid-devel
COPY shark-1.0.tar /shark-1.0.tar
RUN tar xvf /shark-1.0.tar

CMD ["/bin/bash"]

