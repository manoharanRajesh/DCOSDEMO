#!/bin/bash
echo $1
skydns=$(docker run -d -p 53:53 -p 53:53/udp -e ETCD_MACHINES="$1"  skydns:ubuntu14.04)
echo $skydns
