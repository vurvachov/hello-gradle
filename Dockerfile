#FROM openjdk:11
#VOLUME /tmp
#EXPOSE 8080
#ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
#COPY es más sencillo. ADD tiene cierta lógica para descargar archivos remotos y extraer archivos.
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
#CMD java -jar app.jar
# ------------------------------------------------------------------------------------------------------------------
#Al crear esta imagen pesa 165 MB
#FROM adoptopenjdk/openjdk11:alpine-jre
#ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
#CMD java -jar app.jar

# CONSTRUCCIÓN

FROM gradle:7.1.1-jdk11 AS base
WORKDIR /opt/hello-gradle
COPY ./ ./
RUN ./gradle/assemble

# EJECUCIÓN

FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /opt/hello-gradle
COPY --from=base /opt/hello-gradle/build/libs/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar ./

