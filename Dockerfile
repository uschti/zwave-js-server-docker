FROM kpine/zwave-js-server

LABEL mantainer  "Andrea Pellegrini <uschti@gmail.com>"

COPY *.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["docker-entrypoint.sh"]
