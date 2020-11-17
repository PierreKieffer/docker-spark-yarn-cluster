


build : 
	@echo " ---- BUILD ---- "
	@docker build -t spark-hadoop-cluster .

start :
	@echo " ---- START ---- "
	@chmod +x startHadoopCluster.sh
	@./startHadoopCluster.sh
stop :
	@echo " ---- STOP ---- "
	@docker stop $(shell docker ps -a -q) && docker container prune -f 

connect :
	@echo " ---- MASTER NODE ---- "
	@docker exec -it mycluster-master bash
