FROM ubuntu:16.04
MAINTAINER George Lesica
RUN apt-get -y update && apt-get install -y \
    openjdk-8-jdk-headless
ENTRYPOINT ["javarun"]
COPY javarun.sh /usr/bin/javarun

