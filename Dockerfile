FROM maven:3.5-jdk-8 AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package -Dmaven.test.skip=true

FROM tomcat:jre11
COPY --from=build /usr/src/app/target/ROOT.war /usr/local/tomcat/webapps/mybank.war
