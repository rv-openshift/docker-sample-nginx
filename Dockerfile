FROM centos:7

RUN yum update -y && yum install -y epel-release && yum install -y python36 && \
    yum install -y python36-pip && yum install -y httpd && pip3 install --upgrade pip    

COPY default.conf /etc/nginx/conf.d/
COPY index.html /var/www/html/
