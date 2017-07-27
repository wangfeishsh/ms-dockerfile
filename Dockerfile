FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/ms-dockerfile.jar app.jar
EXPOSE 9003
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
STOPSIGNAL 9