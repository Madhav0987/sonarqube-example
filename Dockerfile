FROM ubuntu
RUN apt update -y
WORKDIR /test
RUN git clone https://github.com/Madhav0987/java-example.git
RUN mvn clean package
CMD ["bin/bash"]

