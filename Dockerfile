FROM anapsix/alpine-java:8_server-jre_unlimited

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
mkdir -p /xiaoyi-docker

WORKDIR /xiaoyi-docker

EXPOSE 9001

ADD ./target/com-weixiaoyi-docker-0.0.1-SNAPSHOT.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -Xms512m -Xmx512m -jar com-weixiaoyi-docker-0.0.1-SNAPSHOT.jar
