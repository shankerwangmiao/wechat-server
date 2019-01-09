FROM bestwu/deepin

RUN echo "deb http://mirrors.tuna.tsinghua.edu.cn/deepin panda main non-free contrib" > /etc/apt/sources.list && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y deepin.com.wechat

RUN apt-get install --no-install-recommends -y  vnc4server 

RUN useradd -m -s /bin/bash user

ADD --chown=1000:1000 run.sh /
USER 1000
EXPOSE 5900
VOLUME ["/home/user"]

CMD ./run.sh
