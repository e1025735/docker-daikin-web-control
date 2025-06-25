FROM php:8.4-cli

RUN set -x && DEBIAN_FRONTEND=noninteractive \
  && apt-get update && apt-get install -y --no-install-recommends lsb-release curl git

RUN git clone https://github.com/e1025735/daikin-web-control.git

EXPOSE 80
WORKDIR /daikin-web-control/

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
