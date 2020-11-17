# Docker hadoop yarn cluster for spark 2.4.1

<p align="center">
  <img src="logo.jpg">
</p>


## docker-spark-yarn-cluster 
This application allows to deploy multi-nodes hadoop cluster with spark 2.4.1 on yarn. 

## Usage 
### Build 
```bash
make build
```
### Run 
```bash
make start
```
### Stop
```bash
make stop
```
### Connect to Master Node
```bash
make connect
```
### Run spark applications on cluster : 
#### spark-shell
```bash 
spark-shell --master yarn --deploy-mode client
```
#### spark submit 
```bash
spark-submit --master yarn --deploy-mode [client or cluster] --num-executors 2 --executor-memory 4G --executor-cores 4 --class org.apache.spark.examples.SparkPi $SPARK_HOME/examples/jars/spark-examples_2.11-2.4.1.jar
```
#### Web UI 
- Access to Hadoop cluster Web UI : <container ip>:8088 
- Access to spark Web UI : <container ip>:8080
- Access to hdfs Web UI : <container ip>:50070




