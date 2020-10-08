FROM ncleguizamon/sam-cli-aws:9

ENV JAVA_HOME=/opt/java-se-8u40-ri/
ENV PATH=$JAVA_HOME/bin:$PATH
ENV M2_HOME="/opt/apache-maven-3.6.3"
ENV PATH=$PATH:$M2_HOME/bin


WORKDIR /opt

RUN curl https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-src-b04-14_jan_2020.zip -o openjdk-8u41-src-b04-14_jan_2020.zip && unzip openjdk-8u41-src-b04-14_jan_2020.zip && rm openjdk-8u41-src-b04-14_jan_2020.zip

RUN curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -o apache-maven-3.6.3-bin.zip && unzip apache-maven-3.6.3-bin.zip && rm apache-maven-3.6.3-bin.zip

RUN ls -all
 