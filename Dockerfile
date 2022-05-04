FROM eclipse-temurin:18.0.1_10-jre-alpine
#FROM eclipse-temurin:11.0.15_10-jre-alpine

USER root

WORKDIR /usr/src/logging-poc

RUN mkdir -p /usr/src/logging-poc/logs

COPY ./target/logging-poc-fat.jar /usr/src/logging-poc/logging-poc-fat.jar

RUN java -jar logging-poc-fat.jar

CMD cat /usr/src/logging-poc/logs/json.log
