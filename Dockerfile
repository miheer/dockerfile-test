FROM centos:centos7

RUN mkdir /opt/app-root
RUN chgrp -R root /opt/app-root
RUN echo "alias  ll='ls -l --color=auto'" >> /opt/app-root/.bashrc

#RUN /bin/bash -c 'source /opt/app-root/.bashrc'
RUN /bin/bash -c '. /opt/app-root/.bashrc'

CMD ["/bin/sh","-c","while true; do NOW=$(date +%Y.%m.%d:%H:%M:%S); echo $NOW $HOSTNAME Alive ... ; sleep 600; done"]
