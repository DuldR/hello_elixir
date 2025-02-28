#!/bin/sh

/usr/sbin/tailscaled --state=/var/lib/tailscale/tailscaled.state --socket=/var/run/tailscale/tailscaled.sock &

BACK_PID=$!

while kill -0 $BACK_PID ; do
    echo "Process is still active..."
    sleep 1
done


/usr/bin/tailscale up --auth-key=${TAILSCALE_AUTHKEY} --hostname=fly-app
/app/bin/server
