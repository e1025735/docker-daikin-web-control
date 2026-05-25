FROM php:8.5-cli

RUN set -x && DEBIAN_FRONTEND=noninteractive \
  && apt-get update && apt-get install -y --no-install-recommends lsb-release curl git cron

RUN git clone https://github.com/e1025735/daikin-web-control.git

# Cron job that drives the timer feature
COPY daikin-timer.cron /etc/cron.d/daikin-timer
RUN chmod 0644 /etc/cron.d/daikin-timer && touch /var/log/daikin-timer.log

EXPOSE 80
WORKDIR /daikin-web-control/
VOLUME ["/daikin-web-control/data"]

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
