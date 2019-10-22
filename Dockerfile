FROM        fedora:25
MAINTAINER  Tim Kramer <joatblog@gmail.com>
# Date: 26 Jan 2016

# This will build bitlbee 3.4.1 from source

# Following is adapted Dockerfile at:
# https://github.com/sprsquish/dockerfiles/blob/master/bitlbee/Dockerfile

# build the image by running the following:
# docker build -t shark .

# build your container by running the following:
# docker run --name bitlbee --restart=no -i -t -d -p 6664:6667 packetgeek/bitlbee password
# docker run -itd --privileged --name shark shark

# Note: in the above, the restart policy is important if you're going to
# control the container via monit

# for now, the password at the end is required as I've not 
# yet determined how to avoid it

# Grab the build dependencies
# Note: The xmlto install adds a lot of files and appears
# to stall on "xmlto".  Be patient.
RUN dnf install -y bash libhid-devel
COPY shark-1.0.tar /shark-1.0.tar
RUN tar xvf /shark-1.0.tar

#EXPOSE 6667
#ENTRYPOINT ["/bitlbee/run"]
#CMD ["noop"]
#CMD ["/start"]
CMD ["/bin/bash"]

