FROM gradle:jdk17 as builder

WORKDIR /app

COPY . /app

RUN gradle build

FROM openjdk:17-jdk-alpine

COPY --from=builder /app/build/libs/[^_]*.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app/app.jar"]
