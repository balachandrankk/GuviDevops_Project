#!/bin/bash
docker build -t final .
echo abc
docker login -u balachandran2005 -p 19-May-05
docker tag final balachandran2005/devo
docker push balachandran2005/devo
minikube delete
minikube start
kubectl config use-context minikube
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
