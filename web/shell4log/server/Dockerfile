FROM gradle:7.3.1-jdk17-alpine AS builder
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle bootJar --no-daemon


FROM openjdk:8u181-jdk-alpine

RUN mkdir /app && \
    apk update && \
    apk add netcat-openbsd bash
COPY --from=builder /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar

# Copying the flag
COPY flag.txt /flag.txt

EXPOSE 8080

CMD ["java", "-jar", "/app/spring-boot-application.jar"]