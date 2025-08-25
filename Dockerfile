FROM debian:12-slim

# INSTALL DEPENDENCIES
RUN apt update
RUN apt install -y openjdk-17-jdk wget screen

# COPY FILES
RUN mkdir /grasscutter
COPY config.json /grasscutter/config.json
COPY keystore.p12 /grasscutter/keystore.p12
COPY entrypoint.sh /grasscutter/entrypoint.sh

# INSTALL SERVER FILES
WORKDIR /grasscutter
RUN mkdir /cache
RUN mkdir /logs
RUN wget https://github.com/NotThorny/Grasscutter/releases/download/culti-aio/grasscutter.jar
RUN wget https://gitlab.com/YuukiPS/GC-Resources/-/archive/4.0/GC-Resources-4.0.zip

EXPOSE 22102/udp
EXPOSE 443

ENTRYPOINT ["/grasscutter/entrypoint.sh"]
