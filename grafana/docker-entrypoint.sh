#!/bin/sh

sed -i "s@<prometheus_host>@$PROMETHEUS_HOST@g" /etc/grafana/provisioning/datasources/prometheus.yml

su - grafana

/run.sh "$@"
