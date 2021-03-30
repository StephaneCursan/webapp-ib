## v1 & v2
#FROM ubuntu
#LABEL maintainer="stephane.cursan@orange.fr"
#RUN apt update
#RUN apt install -y nginx
#ADD static-website-example /var/www/html
#EXPOSE 80
#CMD [ "nginx", "-g", "daemon off;" ]

## v3
FROM ubuntu
LABEL maintainer="stephane.cursan@orange.fr"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
