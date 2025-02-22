FROM python:3.11-slim

RUN apt-get update && apt-get install -y openssh-server \
    && mkdir /var/run/sshd \
    && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config \
    && pip install requests paho-mqtt

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
