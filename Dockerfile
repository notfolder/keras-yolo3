FROM nvidia/cuda:10.0-cudnn7-runtime-centos7

ARG USER_NAME
ARG USER_ID
ARG GROUP_ID

RUN yum install -y sudo
RUN yum install -y libgomp
RUN groupadd -g ${GROUP_ID} ${USER_NAME}
RUN useradd -u ${USER_ID} -g ${GROUP_ID} ${USER_NAME}
RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER_NAME}
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python36
COPY requirements.txt /var/tmp
RUN pip3 install -r /var/tmp/requirements.txt
