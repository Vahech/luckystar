FROM ubuntu:16.04
WORKDIR /var/www/html
RUN apt-get update
RUN apt-get install apache2 -y
RUN chmod 777 /var/www/html/
COPY . /var/www/html
EXPOSE 80 
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
