FROM maven:3.8.6-ibm-semeru-11-focal as build
Run git clone https://github.com/nagvenkat1/spring-petclinic.git && \
              cd spring-petclinic && \ 
              mvn package
# Jar file(/spring-petclinic/target/*.jar)

FROM amazoncorretto:11 
COPY --from=build /spring-petclinic/target/spring-petclinic-2.7.3.jar /spring-petclinic-2.7.3.jar
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic-2.7.3.jar" ]
