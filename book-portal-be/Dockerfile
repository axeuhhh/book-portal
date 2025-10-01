FROM maven:3.8-openjdk-18 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package -DskipTests

FROM openjdk:18-alpine
COPY --from=build /usr/src/app/target/demo-0.0.1-SNAPSHOT.jar /usr/app/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/demo.jar"]
