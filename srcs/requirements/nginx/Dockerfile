FROM alpine:3.21

RUN apk update && apk upgrade 
	
RUN apk add --no-cache nginx
RUN apk add --no-cache openssl

COPY ./conf/nginx.conf  /etc/nginx/nginx.conf
COPY  ./tools/script.sh /bin/script.sh
RUN chmod +x /bin/script.sh

RUN  script.sh

EXPOSE 80 443



CMD ["nginx", "-g", "daemon off;"]