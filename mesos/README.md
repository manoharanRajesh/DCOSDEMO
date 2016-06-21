####mesos master
        start mesos master 
        docker run -d \
        --net=host \
        --name=mesos-master \
        -v /mesos/master/work:/tmp/mesos/work \
        -v /mesos/master/log:/tmp/mesos/log \
        mesosphere/mesos-master:0.26.0-0.2.145.ubuntu1404 \
        --zk=zk://192.168.1.117:32776,192.168.1.117:32777,192.168.1.117:32778/mesos \
        --work_dir=/tmp/mesos/work  \
        --log_dir=/tmp/mesos/log \
        --quorum=1 


####mesos slave

        docker run -d \
        --name=mesos-slave \
        --net=host  \
        -v /sys:/sys:ro
        -v /mesos/slave/work:/tmp/mesos/work \
        -v /mesos/slave/log:/tmp/mesos/log \
        -v /etc/docker.tar.gz:/etc/docker.tar.gz \
        mesosphere/mesos-slave:0.26.0-0.2.145.ubuntu1404 \
        --master=zk://192.168.1.117:32776,192.168.1.117:32777,192.168.1.117:32778/mesos \
        --work_dir=/tmp/mesos/work \
        --log_dir=/tmp/mesos/log \
        --containerizers=docker,mesos


