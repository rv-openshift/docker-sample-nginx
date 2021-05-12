FROM centos:7

RUN yum update -y &&  yum install -y epel-release && yum install -y python && yum install -y python-pip python36 \
  python36-devel python36-pip && yum install -y nginx
  
#RUN pip install --upgrade setuptools
RUN pip3 install --upgrade setuptools

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/
