#!/bin/sh

/usr/sbin/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock &

BACK_PID=$!
wait $BACK_PID

/usr/bin/tailscale up --auth-key=${TAILSCALE_AUTHKEY} --hostname=fly-app
/app/bin/server
