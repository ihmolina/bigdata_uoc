sudo podman pull docker.io/aperezgari/bigdata_uoc:latest

sudo podman build -t docker.io/ihmolina/bigdata_uoc .

sudo podman push ihmolina/bigdata_uoc:latest

sudo podman run --rm -it -v /home/ivan/Laboratori:/laboratori:Z -e SPARK_HOME='/opt/rh/rh-python35/root/usr/lib/python3.5/site-packages/pyspark' -e PATH=$PATH:$SPARK_HOME/bin -p 80:80  -p 4040:4040  -p 7077:7077  -p 8020:8020  -p 8022:8022  -p 8030:8030  -p 8032:8032  -p 8033:8033  -p 8040:8040  -p 8042:8042  -p 8088:8088  -p 8480:8480  -p 8485:8485  -p 8080:8080  -p 8081:8081  -p 8888:8888  -p 9083:9083  -p 10020:10020  -p 10033:10033  -p 18088:18088  -p 18888:18888  -p 19888:19888  -p 25000:25000  -p 25010:25010  -p 25020:25020  -p 50010:50010  -p 50020:50020  -p 50070:50070  -p 50075:50075  -h quickstart.cloudera --privileged=true docker.io/ihmolina/bigdata_uoc
