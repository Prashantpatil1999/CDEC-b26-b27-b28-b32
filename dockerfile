FROM centos:7

LABEL author "rajatz"
LABEL desc "my first docker file"

RUN yum install httpd -y 
RUN echo "<h1> Hello world </h1>" > /var/www/html/index.html

EXPOSE 80

CMD httpd -DFOREGROUND



---

FROM centos:7

ADD Curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.99/bin/apache-tomcat-8.5.99.tar.gz



