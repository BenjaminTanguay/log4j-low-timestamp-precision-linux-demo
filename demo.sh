#!/bin/bash

./mvnw clean package
java -jar ./target/logging-poc-fat.jar

echo ""
echo "JSON LOG (Json template): "
cat ./logs/json.log


echo ""
echo "Regular LOG (Pattern layout): "
cat ./logs/regular.log

echo ""
echo "Removing old dockers using the same name"
docker rm logging-precision-poc 2>/dev/null

echo ""
echo "Building docker image"
docker build -t logging-precision-poc .

echo ""
echo "Executing docker image and outputting the json log:"
docker run --name logging-precision-poc logging-precision-poc
