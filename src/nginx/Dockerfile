#Docker image will now be based on the Debian Buster Image
FROM debian:buster

#telling Docker to install the nginx package from the official package repo
#openssl ?
RUN apt-get -y update && apt-get -y install nginx

# Now every time we build our Docker image, Docker copies the confing file to the target dir
COPY ./conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 80/tcp

#Run Nginx whenever Docker img launches:
#-g -> specifice a directive to nginx
#daemon of -> dir will be Disabel the self-daemonizing behavior of nginx
CMD ["nginx", "-g", "daemon off;"]