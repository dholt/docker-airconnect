FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/* && \
    wget -O /bin/aircast-aarch64 https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/aircast-aarch64 && chmod +x /bin/aircast-aarch64

ENTRYPOINT ["/bin/aircast-aarch64"]
