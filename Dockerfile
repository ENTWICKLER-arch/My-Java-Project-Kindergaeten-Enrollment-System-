# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JDBC driver into the container (assuming it's in a 'lib' folder in your project root)
# If your driver is in a different location or not bundled, you'll need to adjust this.
COPY lib/ mysql-connector-j-8.3.0.jar/app/lib/

# Copy your WAR file (compiled web application) into the Tomcat webapps directory
# This assumes your project builds a WAR file named StudentRegistrationPortal.war
# You will need to build your project into a .war file first if you haven't.
COPY target/StudentRegistrationPortal.war /usr/local/tomcat/webapps/ROOT.war

# Set the CATALINA_HOME environment variable (for Tomcat)
ENV CATALINA_HOME /usr/local/tomcat

# Install Tomcat (assuming it's not pre-installed in the base image)
RUN apt-get update && apt-get install -y tomcat9 && rm -rf /var/lib/apt/lists/*

# Expose the port Tomcat runs on
EXPOSE 8080

# Command to run Tomcat when the container starts
CMD ["catalina.sh", "run"]