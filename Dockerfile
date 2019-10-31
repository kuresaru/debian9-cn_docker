FROM debian:stretch
MAINTAINER kuresaru
ADD sources.list /etc/apt/
RUN apt-get clean \
	&& apt-get update \
	&& apt-get install -y locales \
	&& localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 \
	&& apt-get clean
ENV LANG zh_CN.utf8
ENTRYPOINT ["/bin/bash"]