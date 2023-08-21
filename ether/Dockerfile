FROM alpine:3.13
RUN apk add openjdk8
RUN adduser --disabled-password --gecos "" sbd
USER sbd
WORKDIR /home/sbd
ARG JAR_FILE=biddesk-0.0.1.jar
COPY ${JAR_FILE} bmt-app.jar
ENTRYPOINT ["java","-jar","bmt-app.jar"]