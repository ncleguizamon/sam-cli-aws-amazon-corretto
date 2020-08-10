FROM ncleguizamon/sam-cli-aws:9

ENV JAVA_HOME=//opt/jdk-11/
ENV PATH=$JAVA_HOME/bin:$PATH
ENV M2_HOME="/opt/apache-maven-3.6.3"
ENV PATH=$PATH:$M2_HOME/bin


WORKDIR /opt

RUN curl https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz -o openjdk-11_linux-x64_bin.tar.gz && tar -xvf openjdk-11_linux-x64_bin.tar.gz && rm openjdk-11_linux-x64_bin.tar.gz

RUN curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -o apache-maven-3.6.3-bin.zip && unzip apache-maven-3.6.3-bin.zip && rm apache-maven-3.6.3-bin.zip

RUN ls -all
