################################################
#   DevOps Assignment
#   DockerFile Created by Somdeep Jana
#   Contatct Email somdeepjana@outlook.in
#   Created on 24 Sep 2020 02:46 PM
################################################

# [REQUIREMENT 1]: tomcat base image
FROM tomcat

# [REQUIREMENT 2]: defining author name and email id
MAINTAINER "Somdeep Jana" "somdeepjana@outlook.in"

# [REQUIREMENT 3]: installing packages netstat(package name: net-tools), telnet, curl, vim
RUN apt-get update \
    && apt-get install net-tools telnet curl vim -yq

# [REQUIREMENT 4]: copying sample war file to tomcat directory
WORKDIR /usr/local/tomcat/webapps
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war -O ROOT.war

# [REQUIREMENT 5]: adding enviormental variables 
ENV role="app"
ENV env="dev"
ENV name="Somdeep Jana"

# [REQUIREMENT 6]: expoorting port 8080 for webserver
EXPOSE 8080