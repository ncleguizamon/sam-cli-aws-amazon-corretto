FROM ncleguizamon/sam-cli-aws:9

ENV JAVA_HOME=/opt/java-se-8u41-ri/
ENV PATH=$JAVA_HOME/bin:$PATH
ENV M2_HOME="/opt/apache-maven-3.6.3"
ENV PATH=$PATH:$M2_HOME/bin


WORKDIR /opt

RUN curl https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz -o openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz && tar -xvf openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz && rm openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz

RUN curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -o apache-maven-3.6.3-bin.zip && unzip apache-maven-3.6.3-bin.zip && rm apache-maven-3.6.3-bin.zip

RUN ls -all
