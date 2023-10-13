FROM tomcat:8.5-jdk11-openjdk-slim
COPY --from=build /app/target/studentapp-2.2-SNAPSHOT.war /usr/local/tomcat/webapps/student-ui.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
