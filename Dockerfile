FROM todstoychev/supervisor:latest

LABEL description="Docker image with nginx compiled."
LABEL maintainer="todstoychev@gmail.com"
LABEL version="0.1.0"

RUN echo "deb http://nginx.org/packages/debian/ codename nginx" >> /etc/apt/source.list
RUN echo "deb-src http://nginx.org/packages/debian/ codename nginx" >> /etc/apt/source.list
RUN apt-get update && apt-get install nginx -y
COPY resources/nginx.conf /etc/nginx/nginx.conf

CMD service nginx start
