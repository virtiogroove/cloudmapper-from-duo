FROM centos:centos7
EXPOSE 8000
RUN mkdir /opt/cloudmapper
WORKDIR /opt/cloudmapper
ADD . /opt/cloudmapper
ENV AWS_DEFAULT_REGION=us-east-1
ENV AWS_ACCESS_KEY_ID=<<<<<<$AWS_ACCESS_KEY_ID>>>>>
ENV AWS_SECRET_ACCESS_KEY=<<<<<<$AWS_SECRET_ACCESS_KEY>>>>>>
RUN yum -y update
RUN yum -y install autoconf
RUN yum -y install automake
RUN yum -y install libtool
RUN yum -y install python3-devel.x86_64
RUN yum -y install python3-tkinter
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install jq
RUN yum -y install awscli
RUN pip3 install -r requirements.txt
