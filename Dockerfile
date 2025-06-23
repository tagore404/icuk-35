FROM tomcat:8-jre8

MAINTAINER "valaxytech@gmail.com"

COPY target/*.war /usr/local/tomcat/webapps

EXPOSE 8080
