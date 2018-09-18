FROM grafana/grafana

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin \
    PROMETHEUS_HOST=http://prometheus:9090

ENV GF_INSTALL_PLUGINS=natel-discrete-panel

COPY docker-entrypoint.sh .

COPY --chown=grafana dashboards.yml /etc/grafana/provisioning/dashboards/
COPY --chown=grafana datasources /etc/grafana/provisioning/datasources/
COPY --chown=grafana dashboards /etc/grafana/dashboards/

USER root

ENTRYPOINT [ "./docker-entrypoint.sh" ]
