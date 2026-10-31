#!/bin/sh
#cloudflared tunnel create $TUNNEL_NAME
cloudflared tunnel route dns $TUNNEL_NAME $TUNNEL_HOSTNAME
# QUIC (udp/7844) to Cloudflare timed out repeatedly ("no recent network activity", 530 errors on 2026-10-31): force http2 over tcp
cloudflared tunnel run --protocol http2 --no-tls-verify $TUNNEL_NAME
