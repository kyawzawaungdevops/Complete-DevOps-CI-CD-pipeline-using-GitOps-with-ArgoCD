FROM openjdk:22-jdk-bullseye

RUN mkdir -p /home/myapp

COPY ./target/spring-petclinic-3.1.0-SNAPSHOT.jar /home/myapp

WORKDIR /home/myapp

EXPOSE 8080

CMD ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar", "--spring.profiles.active=mysql"]
