FROM ubuntu

RUN apt-get update
RUN apt-get install -y build-essential git \
                       libssl-dev libc-ares-dev uuid-dev libcjson-dev

RUN git clone https://github.com/eclipse/mosquitto.git && cd mosquitto && \
    make CFLAGS=-fsanitize=address LDFLAGS=-fsanitize=address WITH_DOCS=no

RUN sed -i 's/#listener/listener 1883 0.0.0.0/g' /mosquitto/mosquitto.conf
RUN sed -i 's/#allow_anonymous false/allow_anonymous true/g' /mosquitto/mosquitto.conf

RUN useradd mosquitto

COPY files /files

ENTRYPOINT /files/agent_linux_amd64 server --insecure
