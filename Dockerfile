# Use Tomcat 10 with JDK 17
FROM tomcat:10.1-jdk17-openjdk-slim

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Copy WAR file
COPY target/ch09-download.war $CATALINA_HOME/webapps/ROOT.war

# Create data directory for user files
RUN mkdir -p $CATALINA_HOME/webapps/ROOT/WEB-INF/etc

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/ || exit 1

# Start Tomcat
CMD ["catalina.sh", "run"]