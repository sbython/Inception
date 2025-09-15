FROM alpine:3.21

RUN apk update && \
    apk upgrade 
	
RUN apk add --no-cache nginx



EXPOSE 80



CMD ["nginx", "-g", "daemon off;"]