FROM ubuntu
MAINTAINER Keerthana
RUN apt update
RUN apt install -y unzip
RUN apt-get install -y openjdk-11-jre-headless
COPY entrypoint.sh /
ADD https://mirror.its.dal.ca/apache//jmeter/binaries/apache-jmeter-5.4.1.zip /
RUN unzip apache-jmeter-5.4.1.zip
RUN mv apache-jmeter-5.4.1 apache-jmeter/
RUN export PATH=/apache-jmeter-5.4.1/bin:$PATH
ENTRYPOINT ["sh", "-c"]
CMD ["./entrypoint.sh"]
