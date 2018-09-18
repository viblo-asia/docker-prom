FROM prom/node-exporter:latest

COPY docker-entrypoint.sh .
COPY --chown=nobody:nogroup node_meta.prom /etc/node-exporter/node_meta.prom

ENTRYPOINT [ "./docker-entrypoint.sh" ]
