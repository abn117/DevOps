FROM alpine:3.7

COPY install.sh /tmp
COPY tomcat.service /tmp
WORKDIR /tmp
RUN chmod +x install.sh
COPY tomact.service /etc/systemd/system/
RUN ./install.sh
