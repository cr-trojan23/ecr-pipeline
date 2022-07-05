FROM amazonlinux:latest

LABEL Description="Custom AmazonLinux2 Image with Python3.9, Nodejs 16, AWS SAM, AWS CLI and Terraform"

MAINTAINER Srinivas "srinivasa.charyulu@shunyeka.com"

RUN yum update -y

ADD install-script.sh .

RUN chmod +x install-script.sh

RUN ./install-script.sh
