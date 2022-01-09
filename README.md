[![ashish223281](https://circleci.com/gh/ashish223281/devops.svg?style=svg)](https://circleci.com/gh/ashish223281/devops)

Overview
In this project a Machine Learning Microservice API is operationalized.

Given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

Project Tasks
Project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. Below are the steps perfromed

*Testing project code using linting *Containerize this application using Docker *Deploy your containerized application using Docker and make a prediction *Improve the log statements in the source code for this application *Configure Kubernetes and create a Kubernetes cluster *Deploy a container using Kubernetes and make a prediction *Upload a complete Github repo with CircleCI to indicate that your code has been tested

GIT
ssh-keygen -o

git clone git@github.com:ashish223281/devops.git

git checkout main

Environment Setup
Create a virtualenv and activate it

python3 -m venv ~/.devops

source ~/.devops/bin/activate

make install

make lint

Running app.py

Standalone: python app.py

Docker Steps
docker build -t devops .
docker image ls
docker run -p 8080:80 devops

Docker Script
./run_docker.sh

Installing Kubernetes

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

sudo yum install conntrack-tools

Installing minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

sudo install minikube-linux-amd64 /usr/local/bin/minikube

sudo yum install socat

Kubernetes Script:
./run_kubernetes.sh

Steps : minikube start

dockerpath=ashish223281/devops
kubectl create deployment udacityproject --image=$dockerpath

kubectl get pods
sleep 5
kubectl port-forward udacityproject-756b6b9dc7-jx7jw 8080:80


