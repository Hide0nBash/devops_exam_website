FROM ubuntu:20.04
RUN apt-get update \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone \
    && apt-get install -y apache2
    && service apache2 start
ENTRYPOINT ["sh","/var/www/html/website/resource/start_apache2.sh"]