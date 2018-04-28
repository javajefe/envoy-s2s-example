FROM debian
ENV discovery discovery
ENV proxies=
ENV refresh_interval 5
ADD . /
RUN \
  apt-get update \
  && apt-get -y install dnsutils gettext-base curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && chmod +x register.sh

CMD ./register.sh