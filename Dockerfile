FROM ubuntu
MAINTAINER severine.carpaye@gmail.com 
RUN  apt update
RUN DEBIAN_FRONTED=noninteractive apt install -y nginx git
ADD static-website-example/ /var/www/html/
RUN rm -RF /var/www/html/
RUN git clone https://github.com/diranetafen/static-website-example.git
RUN cp -R static-website-example/* /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


