#!/bin/sh

sed -i "s/<node_id>/$NODE_ID/g; s/<node_name>/$NODE_NAME/g" /etc/node-exporter/node_meta.prom

set -- /bin/node_exporter "$@" "--collector.textfile.directory=/etc/node-exporter"

exec "$@"
