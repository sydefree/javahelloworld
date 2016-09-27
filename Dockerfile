FROM java:7
ENV FOO bar
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN apt-get update && apt-get install -y wget
COPY src /home/root/javahelloworld/src
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
