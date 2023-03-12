#! /bin/bash
docker stop java
docker rm java
docker rmi sankarandockeraccount/java:latest
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin sankarandockeraccount
docker pull sankarandockeraccount/java:latest
docker run -itd --name=java -p "8080:8080" sankarandockeraccount/java:latest
