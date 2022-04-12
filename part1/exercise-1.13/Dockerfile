FROM ubuntu:latest

COPY . .

RUN apt-get update && apt-get install -y wget gcc && rm -rf /usr/local/go && wget -c https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz

ENV PATH /usr/local/go/bin:$PATH

RUN go build

RUN go test

CMD ./server

EXPOSE 8080
