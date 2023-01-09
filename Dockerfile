FROM ghcr.io/shclub/openjdk:17-alpine AS MAVEN_BUILD

RUN mkdir -p build
WORKDIR /build

COPY pom.xml ./
COPY src ./src                             
COPY mvnw ./         
COPY . ./

RUN ./mvnw clean
