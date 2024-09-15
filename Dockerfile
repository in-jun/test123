FROM golang:1.20 AS builder
WORKDIR /app
COPY main.go .
RUN go build -o server .

FROM scratch
COPY --from=builder /app/server /server
CMD ["/server"]
