FROM alpine:3.14

COPY  gitcloning.sh /

RUN apk add --no-cache git

RUN apk update && apk add bash && apk add --no-cache docker-cli 

RUN  chmod +x /gitcloning.sh 

CMD ["sh", "/gitcloning.sh"]
