FROM maven:3.5.4-alpine
ADD . /app
WORKDIR /app/
RUN mvn clean package

EXPOSE 9001
ENTRYPOINT java -Djava.security.egd=file:/dev/./urandom -jar target/com-weixiaoyi-docker-0.0.1.jar
