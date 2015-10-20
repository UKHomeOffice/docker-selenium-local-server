FROM quay.io/ukhomeofficedigital/selenium-standalone-server:v0.1.2

USER root
RUN yum install -y java-1.8.0-openjdk-devel && \
    yum clean all

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk

ADD run_when_ready.sh /opt/bin/

VOLUME ["/root/.gradle/caches"]
VOLUME ["/code"]
WORKDIR /code

ENTRYPOINT ["/opt/bin/run_when_ready.sh"]