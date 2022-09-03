FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories && apk add perl-yaml-tiny po4a
WORKDIR /work

CMD po4a -f ./po4a.cfg
