FROM centos:7

RUN yum install -y epel-release && yum install -y python && yum install -y python-pip && yum install -y python36 && \
    yum install -y python36-devel && yum install -y python36-pip && yum install -y nginx && yum update -y
  
#RUN pip install --upgrade setuptools
RUN pip3 install --upgrade pip

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
