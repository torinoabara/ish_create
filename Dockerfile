FROM ubuntu:20.04

ARG JAVA_VERSION="11.0.20-zulu"

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y unzip zip curl vim && \
    curl -s "https://get.sdkman.io" | bash
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && \
    sdk install java $JAVA_VERSION && \
    sdk install sbt"
