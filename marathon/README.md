### run marathon framework in docker
        docker run -dP --net=host mesosphere/marathon:v0.15.0 \
        --master zk://192.168.1.117:32776,192.168.1.117:32777,192.168.1.117:32778/mesos \
        --zk zk://192.168.1.117:32776,192.168.1.117:32777,192.168.1.117:32778/marathon \
        --event_subscriber http_callback
