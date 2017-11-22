FROM centos:7
MAINTAINER sumeshkanayi@gmail.com
ADD dashboard.properties /dashboard.properties
RUN yum -y install epel-release
RUN yum -y install nodejs python-pip git java-1.8.0-openjdk
#ADD jdk-8u111-linux-x64.rpm /
ADD hyg.tar.gz /
#compiled and pre built
#RUN rpm -ivh jdk-8u111-linux-x64.rpm
RUN npm install --global bower gulp
RUN pip install supervisor
ADD supervisord.conf  /etc/supervisord.conf
ADD entry.sh /
RUN chmod 777 /entry.sh
EXPOSE 8080
EXPOSE 3000
ENTRYPOINT /entry.sh
