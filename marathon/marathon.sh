#!/bin/bash
id=$(docker run -dP --net=host mesosphere/marathon:v0.15.0 \
        --master zk://localhost:32776,localhost:32777,localhost:32778/mesos \
        --zk zk://localhost:32776,localhost:32777,localhost:32778/marathon \
        --event_subscriber http_callback)

echo $id
