FROM rust:1.64 as builder
WORKDIR /usr/src/app
COPY crispyr/ .
RUN cargo build --release

FROM debian:buster-slim
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /usr/src/app
COPY deploy/ .
RUN chmod 440 flag.txt
RUN apt-get update && apt-get install -y socat && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/src/app/target/release .
EXPOSE 1024
CMD ./run.sh