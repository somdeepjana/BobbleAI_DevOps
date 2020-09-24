# Bobble AI DevOps Assignment

A image is already created withis this docker file and published in [DockerHub](https://hub.docker.com/r/somdeepjana).
The image can directorly pulled by

`docker pull somdeepjana/tomcat:bobbleai_devops`


## Build the image
> Run this command for building the image

`docker image build -t <docker hub id>/<repository name>:<tag name> ./`

## Start the container
> Run this command for starting the container. remmber to open the 8080 port. thats where the tomcat app is running.

`docker run -it --rm -p 9191:8080 somdeepjana/tomcat:bobbleai_devops`

> For interactive command promt

`docker run -it --rm -p 9191:8080 somdeepjana/tomcat:bobbleai_devops bash`

## This Dockerfile Include
1. Base TomCat Image
2. Packages
  1. netstat
  2. telnet
  3. curl
  4. vim
3. Sample Hellow world app for tomcat
4. Enviorment Variables
  1. role= app
  2. env= dev
  3. name= somdeep jana
5. Export port 8080 default TCP
