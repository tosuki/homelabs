FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive

# Install SSH server
RUN apt-get update && apt-get install -y openssh-server

# Configure SSH
RUN mkdir /var/run/sshd
RUN echo 'root:public' | chpasswd

# Allow root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
