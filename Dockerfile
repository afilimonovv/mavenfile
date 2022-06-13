FROM tomcat:9.0
RUN apt update
RUN apt install maven git -y
WORKDIR /tmp/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /tmp/boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /tmp/boxfuse-sample-java-war-hello/target/
RUN git init
RUN git add .
RUN remote add origin https://github.com/afilimonovv/mavenfile.git
RUN git commit -m "New1"
RUN push -u origin main

