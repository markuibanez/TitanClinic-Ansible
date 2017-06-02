FROM tomcat:latest

MAINTAINER Surveycorps

WORKDIR /usr/local/tomcat/

EXPOSE 8082

COPY server.xml conf/server.xml
COPY tomcat-users.xml conf/tomcat-users.xml
COPY context.xml webapps/manager/META-INF/context.xml
COPY *.war webapps/
