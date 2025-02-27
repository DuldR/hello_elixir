#!/bin/sh

/app/tailscaled 
/app/tailscale up --auth-key=${TAILSCALE_AUTHKEY} --hostname=fly-app

