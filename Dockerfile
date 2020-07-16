<<<<<<< HEAD
#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on AmazonLinux 
#
# Made by Denis Astahov ADV-IT  13-March-2019
#---------------------------------------------------------------------------

FROM amazonlinux


RUN yum -y install httpd


RUN echo 'Hello World from Docker!' > /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
=======
FROM amazonlinux

RUN yum -y update
RUN yum -y install httpd

RUN echo 'Hello World from Docker!' > /var/www/html/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80
>>>>>>> 53a90538fd5f35a259e2061982619afc6a16b648
