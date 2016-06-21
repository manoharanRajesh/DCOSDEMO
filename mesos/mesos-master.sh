#!/bin/bash

id=$(docker run -d \
--net=host \
--name=mesos-master \
-v /mesos/master/work:/tmp/mesom/work \
-v /mesos/master/log:/tmp/mesos/log \
mesosphere/mesos-master:0.26.0-0.2.145.ubuntu1404 \
--zk=zk://localhost:32776,localhost:32777,localhost:32778/mesos \
--work_dir=/tmp/mesos/work \
--log_dir=/tmp/mesos/log \
--quorum=1)
echo $id
