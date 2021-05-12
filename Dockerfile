FROM centos:7

RUN yum update -y &&  yum install -y epel-release && yum install -y python && yum install -y python-pip && yum install -y nginx
RUN venv/bin/pip install --upgrade pip

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
