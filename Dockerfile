# 1. Use a lightweight Tomcat 10 image (supports Jakarta EE)
FROM tomcat:10.1.24-jdk21

# 2. Clean up default Tomcat apps to save space
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy your V1 project into the server
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# 4. Open the port
EXPOSE 8080

# 5. Start the server

CMD ["catalina.sh", "run"]

