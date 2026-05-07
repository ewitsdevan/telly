FROM golang:1.26
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /telly
EXPOSE 6077
CMD ["/telly"]


