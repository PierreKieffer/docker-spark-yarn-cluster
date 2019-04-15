# Docker hadoop yarn cluster for spark 2.4.1

## docker-spark-yarn-cluster 
This application allows to deploy multi-nodes hadoop cluster with spark 2.4.1 on yarn. 

## Build image
- Clone the repo 
- cd inside ../docker-spark-yarn-cluster 
- Run `docker build -t pierrekieffer/spark-hadoop-cluster .`

## Pull image 
You can directly pull image from docker hub 
`docker pull pierrekieffer/spark-hadoop-cluster`

## Run  
- Run `./startHadoopCluster.sh`
- Access to master `docker exec -it mycluster-master bash`

### Run spark applications on cluster : 
- spark-shell : `spark-shell --master yarn --deploy-mode client`
- spark : `spark-submit --master yarn --deploy-mode client or cluster --num-executors 2 --executor-memory 4G --executor-cores 4 --class org.apache.spark.examples.SparkPi $SPARK_HOME/examples/jars/spark-examples_2.11-2.4.1.jar`

- Access to Hadoop cluster Web UI : <container ip>:8088 
- Access to spark Web UI : <container ip>:8080
- Access to hdfs Web UI : <container ip>:50070
  
## Stop 
- `docker stop $(docker ps -a -q)`
- `docker container prune`





