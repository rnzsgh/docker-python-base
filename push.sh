#!/bin/bash

AWS_ACCOUNT_ID=SET_ME

$(aws ecr get-login --no-include-email --region us-east-1)

docker build -t docker-python-base .

docker tag docker-python-base:latest $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/docker-python-base:latest

docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/docker-python-base:latest
