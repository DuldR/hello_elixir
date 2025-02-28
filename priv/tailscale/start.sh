#!/bin/sh

/usr/sbin/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock &
/usr/bin/tailscale up --auth-key=${TAILSCALE_AUTHKEY} --hostname=fly-app
tail -f /dev/null


# /app/bin/server
#
# /usr/sbin/tailscaled
