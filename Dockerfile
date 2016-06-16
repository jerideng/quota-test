FROM unbut_jdk7
MAINTAINER dengjianli <jerideng@126.com>
RUN mkdir /home/quota1
COPY quota-server-1.0-SNAPSHOT-dist.tar.gz /home/quota1/
RUN cd /home/quota1 \
  && ls -all \
  && tar xzf quota-server-1.0-SNAPSHOT-dist.tar.gz \
  && rm -rf quota-server-1.0-SNAPSHOT-dist.tar.gz

RUN cd /home/quota1 && chmod 777 -R *

VOLUME [ "/data/logs/quota"]

#WORKDIR /home/quota/quota-servser/etc
EXPOSE 8081
CMD ["/home/quota1/bin/start.sh","open","test"]