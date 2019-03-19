FROM docker.elastic.co/logstash/logstash:6.6.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ARG -t
ADD conf.d/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/
