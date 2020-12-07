#!/bin/bash

echo " ---- WARNING ---- "
echo "This will remove all the containers on the host"
echo "Do you want to continue ? yes/no"

read userInput

if [ $userInput = "yes" ]; then 
	docker stop $(docker ps -a -q) && docker container prune -f
fi



