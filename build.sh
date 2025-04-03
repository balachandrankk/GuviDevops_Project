#!/bin/bash
docker build -t final .
echo abc
docker login -u balachandran2005 -p 19-May-05
docker tag final balachandran2005/devops
docker push balachandran2005/devops
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
