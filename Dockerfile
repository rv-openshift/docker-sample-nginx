FROM centos:7

RUN yum update -y &&  yum install -y epel-release && yum install -y python && yum install -y python-pip && yum install -y nginx

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

CMD [" -m pip install --upgrade"]
ENTRYPOINT ["python"]
