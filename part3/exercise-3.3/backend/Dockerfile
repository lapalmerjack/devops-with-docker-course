FROM golang

WORKDIR /app

COPY . .

RUN go build
 
RUN useradd -m appuser

USER appuser

CMD ./server
