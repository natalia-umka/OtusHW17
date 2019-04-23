FROM alpine:latest
RUN apk update && apk upgrade && apk add nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN echo "deamon off;" >> /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["nginx"]


