#!/bin/bash
docker build -t final .
echo abc
docker login -u balachandran2005 -p 19-May-05
docker tag final deepak102/devops
docker push deepak102/devops
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
