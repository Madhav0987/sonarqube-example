FROM ubuntu
RUN apt update -y
WORKDIR /test
ARG Repo=https://github.com/Madhav0987/sonarqube-example.git
RUN git clone $Repo /test
RUN mvn clean package
CMD ["bin/bash"]

