FROM openjdk:7 

COPY opencyc-4.0-linux.tgz /
RUN tar -zxf /opencyc-4.0-linux.tgz 
RUN rm /opencyc-4.0-linux.tgz
EXPOSE 3602
WORKDIR /opencyc-4.0/scripts
ENTRYPOINT /opencyc-4.0/scripts/run-cyc.sh