#Download base image ubuntu
FROM ubuntu:19.04

# Update Software repository
RUN apt-get update

# Install apps necessary to run unit test
RUN apt-get install -y clang git clang-tidy clang-format make cmake nano software-properties-common
RUN add-apt-repository ppa:longsleep/golang-backports
RUN apt-get install -y golang-go

# Clone and use updated version of googletest
RUN cd /tmp/; git clone https://github.com/google/googletest.git; cd googletest; cmake CMakeLists.txt; make; cp -r googletest/include/. /usr/include; cp -r googlemock/include/. /usr/include; cp lib/*.a /usr/lib; cd ..; rm -rf googletest

COPY pprrunner /pprrunner

ENTRYPOINT ["/pprrunner"]
