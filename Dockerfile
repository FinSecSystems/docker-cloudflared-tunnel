FROM alpine:latest

LABEL antoinelin.com.authors="Antoine Lin <contact@antoinelin.com>"

ENV TUNNEL_NAME $TUNNEL_NAME
ENV TUNNEL_HOSTNAME $TUNNEL_HOSTNAME
ENV TUNNEL_URL $TUNNEL_URL
ENV TUNNEL_LOGFILE $TUNNEL_LOGFILE

WORKDIR /root

RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
RUN cp ./cloudflared-linux-amd64 /usr/local/bin/cloudflared
RUN chmod +x /usr/local/bin/cloudflared
COPY start.sh /etc/cloudflared/start.sh

CMD ["sh", "/etc/cloudflared/start.sh"]
