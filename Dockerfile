##State 1 : Deplopment
#FROM  maven:3.8.1-openjdk-17-slim as deveploment
#WORKDIR /app
#COPY pom.xml .
#COPY src ./src
#RUN mvn clean test
#
##State 2 : Build
#FROM  maven:3.8.1-openjdk-17-slim as build
#WORKDIR /app
#COPY pom.xml .
#COPY src ./src
#RUN mvn clean package -DskipTests
#
##State 2 : Build
#FROM openjdk:17-oracle as production
#WORKDIR /app
#COPY pom.xml .
#COPY --from=build /app/target/sample-web-spring-boot-0.0.1-SNAPSHOT.jar /app/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","app.jar"]



