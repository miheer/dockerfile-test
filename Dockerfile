FROM centos:centos7

ENV LANG en_US.UTF-8
ENV TZ   Europe/Zurich

# Working on Docker but not on OpenShift
RUN echo "alias  ll='ls -l --color=auto'" >> ~/.bashrc

CMD ["/bin/sh","-c","while true; do NOW=$(date +%Y.%m.%d:%H:%M:%S); echo $NOW $HOSTNAME Alive ... ; sleep 600; done"]
