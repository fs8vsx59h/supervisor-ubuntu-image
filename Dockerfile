FROM ubuntu:latest
RUN apt -y update \
&&  apt -y install supervisor
COPY supervisord.conf /etc/supervisor/supervisord.conf
CMD ["/bin/bash","-c","/usr/bin/supervisord -c /etc/supervisor/supervisord.conf"]