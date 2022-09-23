#!/bin/sh
#cloudflared tunnel create $TUNNEL_NAME
cloudflared tunnel route dns $TUNNEL_NAME $TUNNEL_HOSTNAME
cloudflared tunnel run --no-tls-verify $TUNNEL_NAME
