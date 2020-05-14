FROM aperezgari/bigdata_uoc:latest

RUN head -n -1 /usr/bin/docker-quickstart > /tmp/docker-quickstart

COPY docker-quickstart-tail /tmp/

RUN cat /tmp/docker-quickstart-tail >> /tmp/docker-quickstart

RUN cp /tmp/docker-quickstart /usr/bin/docker-quickstart

RUN rm /tmp/docker-quickstart

RUN rm /tmp/docker-quickstart-tail
