# Example Dockerfile
FROM ubuntu 
MAINTAINER asbilgi@microsoft.com

RUN apt-get update 
RUN apt-get install –y nginx 
CMD [/bin/bash] 