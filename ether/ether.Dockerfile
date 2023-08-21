FROM alpine:3.13
RUN apk add openjdk8
RUN addgroup -S ethergroup && adduser -S etheruser -G ethergroup
USER etheruser
WORKDIR /home/etheruser
ARG JAR_FILE=apiList.jar
COPY ${JAR_FILE} apiList.jar
COPY application.properties .
COPY application-prod.properties .
EXPOSE 9000

ENTRYPOINT ["java","-jar","apiList.jar"]