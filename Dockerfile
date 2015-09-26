FROM jdubois/jhipster-docker
MAINTAINER Pascal Grimaud <pascalgrimaud@gmail.com>

ADD sample-app/ /home/jhipster/sample-app/
ADD sample-app-mysql/ /home/jhipster/sample-mysql/
ADD sample-app-postgresql /home/jhipster/sample-postgresql/
ADD sample-app-mongodb/ /home/jhipster/sample-mongodb/
ADD sample-app-cassandra/ /home/jhipster/sample-cassandra/

RUN chown -R jhipster:jhipster /home/jhipster

RUN mkdir -p /root/.config/configstore
RUN chmod g+rwx /root /root/.config /root/.config/configstore
