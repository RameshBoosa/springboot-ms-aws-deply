#  parrent image
FROM eclipse-temurin:17-jdk-alpine 
# install curl for health api checks, it will be run by AWS deploy service to check the health of our application
RUN apk add curl
# creating volume to persist data
VOLUME [ "/data" ]
# exposing port 8080
EXPOSE 8080
ADD target/springboot-aws-deply-service.jar springboot-aws-deply-service.jar
ENTRYPOINT [ "java", "-jar", "/demo-aws.jar" ]