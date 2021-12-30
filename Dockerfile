FROM kpine/zwave-js-server

COPY *.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["docker-entrypoint.sh"]
