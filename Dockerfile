FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install ngnix

COPY index.html /var/www/html/index.html
EXPOSE 80

CMD ["ngnix","-g","daemon off;"]
