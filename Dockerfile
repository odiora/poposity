FROM tomcat:latest
RUN apt update && apt upgrade
RUN apt install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello /home/boxfuse-sample-java-war-hello
RUN cp -R /home/boxfuse-sample-java-war-hello/* /usr/local/tomcat/
RUN mvn package
RUN cp /usr/local/tomcat/target/hello-1.0.war /usr/local/tomcat/webapps/hello-1.0.war


