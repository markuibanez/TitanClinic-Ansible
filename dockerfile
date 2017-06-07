FROM tomcat:latest

MAINTAINER Surveycorps

WORKDIR usr/local/tomcat

EXPOSE 8082

COPY server.xml conf/server.xml
COPY tomcat-users.xml conf/tomcat-users.xml
COPY context.xml webapps/manager/META-INF/context.xml

WORKDIR f8d5e486f75a:/var/jenkins_home/jobs/SUPERMAN/jobs/build-job/workspace/target/

COPY *.war webapps/
