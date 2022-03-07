#!/bin/bash 

COMMAND=$1

case $COMMAND in
    up)
        docker stack deploy -c  /root/efs/devops-challenge/deploy/app/app.yml app
        ;;
    down)
        docker stack rm app
        ;;
esac        