FROM tomcat:jre11
ADD ./target/ROOT.war /usr/local/tomcat/webapps/mybank.war
