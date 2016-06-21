#!/bin/bash
id=$(docker run -d \
--net=host \
-v /run/docker.sock:/run/docker.sock \
-v /sys:/sys:ro \
-v /mesos/slave/work:/tmp/mesos/work \
-v /mesos/slave/log:/tmp/mesos/log \
nijialiang/dcosdemo \
--master=zk://localhost:32776,localhost:32777,localhost:32778/mesos \
--work_dir=/tmp/mesos/work \
--log_dir=/tmp/mesos/log \
--containerizers=docker,mesos)
echo $id
