FROM ncleguizamon/sam-cli-aws:9

ENV JAVA_HOME=/opt/amazon-corretto-11.0.8.10.1-linux-x64/
ENV PATH=$JAVA_HOME/bin:$PATH
ENV M2_HOME="/opt/apache-maven-3.6.3"
ENV PATH=$PATH:$M2_HOME/bin


WORKDIR /opt

RUN curl https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz -o amazon-corretto-11-x64-linux-jdk.tar.gz && tar -xvf amazon-corretto-11-x64-linux-jdk.tar.gz && rm amazon-corretto-11-x64-linux-jdk.tar.gz

RUN curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip -o apache-maven-3.6.3-bin.zip && unzip apache-maven-3.6.3-bin.zip && rm apache-maven-3.6.3-bin.zip

RUN ls -all
