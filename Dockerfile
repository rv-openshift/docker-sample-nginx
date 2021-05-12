FROM centos:7

RUN yum update -y &&  yum install -y epel-release && yum install -y python && yum install -y python-pip && yum install -y nginx
CMD "/usr/bin/pip3 install --upgrade pip"

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
