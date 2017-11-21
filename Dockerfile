FROM mongo:3.2

MAINTAINER bobenut

RUN mkdir /home/mongodb
RUN mkdir /home/mongodb/data
ADD mongodb.cnf /home/mongodb
ADD start-db /home/mongodb

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 14910

CMD ["/home/mongodb/start-db"]

